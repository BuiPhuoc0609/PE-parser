# PE-parser

```
code pe parser bằng asm, không được sử dụng import
```

Một số chú ý:

- Em sử dụng struct thay vì offset để trực quan và dễ code hơn

- Khi gọi các hàm tự tạo thì cố gắng dựng hàm theo tiêu chuẩn calling convention fastcall/x64call trên windows để tránh lỗi và dễ dàng sử dụng hơn khi gọi hàm nhiều lần

## Resolve API

Tham khảo từ https://www.ired.team/offensive-security/code-injection-process-injection/finding-kernel32-base-and-function-addresses-in-shellcode

Để lấy được địa chỉ các hàm WinAPI để gọi thì ta làm theo các bước sau:

Lấy địa chỉ của PEB (có thể lấy từ TEB hoặc syscall `NtQueryVirtualMemory`) và duyệt struct lần lượt theo luồng danh sách liên kết `PEB->Ldr->InMemoryOrderLoadList->currentProgram->ntdll->kernel32.BaseDll`.

Tiếp theo ta duyệt export của kernel32 lấy địa chỉ 2 hàm là `LoadLibraryA` và `GetProcAddress` để load dll và lấy địa chỉ các hàm khác, như vậy ta sẽ không phải duyệt module và parse export khi gọi các hàm khác nữa.

Các WinAPI còn lại chỉ cần dùng `LoadLibraryA` và `GetProcAddress` là được.


## Parse PE File

Tham khảo từ https://www.ired.team/miscellaneous-reversing-forensics/windows-kernel-internals/pe-file-header-parser-in-c++

### Parse header

Parse các header như Dosheader, NTheader, Fileheader, Optionalheader thì chỉ cần duyệt theo struct, bắt đầu Dosheader

Các Section header thì tính từ công thức `SectionHeader = NT_HEADERS + sizeof(Signature + FileHeader + OptionalHeader)`.

```asm
    mov     rsi, lpBuffer
    add     rsi, peoffset
    movzx   rcx, [rsi].IMAGE_NT_HEADER.FileHeader.SizeOfOptionalHeader
    add     rsi, rcx
    add     rsi, 4
    add     rsi, SIZEOF IMAGE_FILE_HEADER
    mov     sectionLocation, rsi
```

Các section sau chỉ cần cộng với size struct section trước



### Parse import

Trước tiên ta cần tìm section chứa Import Directory nhằm tìm file offset của Import Directory

```asm
mov     rsi, sectionLocation
mov     ecx, [rsi].IMAGE_SECTION_HEADER.VirtualAddress
mov     rdx, importDirectoryRVA
cmp     rdx, rcx
jl      check_import_done
add     ecx, [rsi].IMAGE_SECTION_HEADER.VirtualSize
cmp     rdx, rcx
jge     check_import_done
mov     rax, sectionLocation
mov     importSection, rax
```

tức là địa chỉ của importDirectory trên mem phải lớn hơn địa chỉ section chứa nó và importDirectory phải bé hơn địa chỉ section chứa nó + size section

importDirectory là 1 mảng chứa các struct import descriptor

Lấy import descriptor đầu tiên:

`importDescriptor = (PIMAGE_IMPORT_DESCRIPTOR)(rawOffset + (imageNTHeaders->OptionalHeader.DataDirectory[IMAGE_DIRECTORY_ENTRY_IMPORT].VirtualAddress - importSection->VirtualAddress));`

import descriptor có cấu trúc như sau:

```
IMAGE_IMPORT_DESCRIPTOR STRUCT
    OriginalFirstThunk              dword ?
    TimeDateStamp                   dword ?
    ForwarderChain                  dword ?
    Namee                           dword ?
    FirstThunk                      dword ?
IMAGE_IMPORT_DESCRIPTOR ENDS
```
các importDescriptor sau thì bằng file offset importDescriptor trước + size importDescriptor trước

Thực tế trong IDA ta có thể thấy:

<img width="1302" height="526" alt="image" src="https://github.com/user-attachments/assets/7b0c238e-dc72-4e91-a9c6-c50f332834a6" />

Như vậy ta có thể lấy được địa chỉ của dll name, tuy nhiên ta cần convert nó về file offset

tức là ta lấy địa chỉ của dll name trừ đi địa chỉ của section chứa nó rồi cộng với offset trên file của section chứa nó

Vốn dĩ ta phải tính từ section chứa nó là vì Windows loader load theo từng section và ta thì đã có VirtualAddress của section ngay trong struct rồi, và điều này cũng giải thích cho công thức tính importDescriptor ở trên.

Tiếp theo ta sẽ lấy name import:

ở trong import descriptor có 1 trường là `OriginalFirstThunk`, trường này trỏ đến hint và tên của import, ta vẫn sẽ lấy địa chỉ của nó trừ đi địa chỉ của section chứa nó rồi cộng file offset như trên.

Từ đó ta lấy được tên import (cần +2 bytes vì 2 bytes đầu là hint)

<img width="1132" height="490" alt="image" src="https://github.com/user-attachments/assets/286d2e63-57f6-471a-85f3-75c2481a17e1" />

### Parse Export

Tương tự parse import, ta convert Export Directory về file offset để áp struct vào, tuy nhiên Export Directory có sẵn trường `AddressOfNames` nên ta chỉ cần tiếp tục convert về lại file offset như trên để lấy name thôi.

Name các export được xếp theo mảng nên ta duyệt mảng với độ lớn là `NumberOfNames`.

```
IMAGE_EXPORT_DIRECTORY STRUCT
    Characteristics                 dword ?
    TimeDateStamp                   dword ?
    MajorVersion                    word  ?
    MinorVersion                    word  ?
    Name2                           dword ?
    Base2                           dword ?
    NumberOfFunctions               dword ?
    NumberOfNames                   dword ?
    AddressOfFunctions              dword ?
    AddressOfNames                  dword ?
    AddressOfNameOrdinals           dword ?
IMAGE_EXPORT_DIRECTORY ENDS
```
