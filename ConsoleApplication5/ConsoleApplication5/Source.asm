option casemap:none

LIST_ENTRY STRUCT
    Flink                           dq ?
    Blink                           dq ?
LIST_ENTRY ENDS

UNICODE_STRING STRUCT
    Length2                         dw ?
    MaximumLength                   dw ?
    Buffer                          dq ?
UNICODE_STRING ENDS

LDR_DATA_TABLE_ENTRY STRUCT
    InLoadOrderLinks                LIST_ENTRY <>
    InMemoryOrderLinks              LIST_ENTRY <>
    InInitializationOrderLinks      LIST_ENTRY <>
    DllBase                         dq ?
    EntryPoint                      dq ?
    SizeOfImage                     dd ?
    Padding0                        dd ?
    FullDllName                     UNICODE_STRING <>
    BaseDllName                     UNICODE_STRING <>
LDR_DATA_TABLE_ENTRY ENDS

PEB_LDR_DATA STRUCT
    Length2                          dd ?
    Initialized                     db ?
    Padding0                        db 3 dup(?)
    SsHandle                        dq ?
    InLoadOrderModuleList           LIST_ENTRY <>
    InMemoryOrderModuleList         LIST_ENTRY <>
    InInitializationOrderModuleList LIST_ENTRY <>
PEB_LDR_DATA ENDS

PEB STRUCT
    Reserved1                       db 2 dup(?)
    BeingDebugged                   db ?
    Reserved2                       db ?
    Padding0                        dd ?
    Reserved3                       dq 2 dup(?)
    Ldr                             dq ?
PEB ENDS

IMAGE_DOS_HEADER STRUCT
    e_magic                         word  ?
    e_cblp                          word  ?
    e_cp                            word  ?
    e_crlc                          word  ?
    e_cparhdr                       word  ?
    e_minalloc                      word  ?
    e_maxalloc                      word  ?
    e_ss                            word  ?
    e_sp                            word  ?
    e_csum                          word  ?
    e_ip                            word  ?
    e_cs                            word  ?
    e_lfarlc                        word  ?
    e_ovno                          word  ?
    e_res                           word  ?
    rev0                            word  ?
    rev1                            word  ?
    rev2                            word  ?
    e_oemid                         word  ?
    e_oeminfo                       word  ?
    e_res2                          word  ?
    rev3                            word  ?
    rev4                            word  ?
    rev5                            word  ?
    rev6                            word  ?
    rev7                            word  ?
    rev8                            word  ?
    rev9                            word  ?
    rev10                           word  ?
    rev11                           word  ?
    e_lfanew                        dword ?
IMAGE_DOS_HEADER ENDS

IMAGE_FILE_HEADER STRUCT
    Machine                         word  ?
    NumberOfSections                word  ?
    TimeDateStamp                   dword ?
    PointerToSymbolTable            dword ?
    NumberOfSymbols                 dword ?
    SizeOfOptionalHeader            word  ?
    Characteristics                 word  ?
IMAGE_FILE_HEADER ENDS

IMAGE_DATA_DIRECTORY STRUCT
    VirtualAddress                  dword ?
    isSize                          dword ?
IMAGE_DATA_DIRECTORY ENDS

IMAGE_OPTIONAL_HEADER64 STRUCT
    Magic                           word  ?
    MajorLinkerVersion              byte  ?
    MinorLinkerVersion              byte  ?
    SizeOfCode                      dword ?
    SizeOfInitializedData           dword ?
    SizeOfUninitializedData         dword ?
    AddressOfEntryPoint             dword ?
    BaseOfCode                      dword ?
    ImageBase                       qword ?
    SectionAlignment                dword ?
    FileAlignment                   dword ?
    MajorOperatingSystemVersion     word  ?
    MinorOperatingSystemVersion     word  ?
    MajorImageVersion               word  ?
    MinorImageVersion               word  ?
    MajorSubsystemVersion           word  ?
    MinorSubsystemVersion           word  ?
    Win32VersionValue               dword ?
    SizeOfImage                     dword ?
    SizeOfHeaders                   dword ?
    CheckSum                        dword ?
    Subsystem                       word  ?
    DllCharacteristics              word  ?
    SizeOfStackReserve              qword ?
    SizeOfStackCommit               qword ?
    SizeOfHeapReserve               qword ?
    SizeOfHeapCommit                qword ?
    LoaderFlags                     dword ?
    NumberOfRvaAndSizes             dword ?
    DataDirectory                   IMAGE_DATA_DIRECTORY 16 dup(<?>)
IMAGE_OPTIONAL_HEADER64 ENDS

IMAGE_OPTIONAL_HEADER32 STRUCT
    Magic                           word  ?
    MajorLinkerVersion              byte  ?
    MinorLinkerVersion              byte  ?
    SizeOfCode                      dword ?
    SizeOfInitializedData           dword ?
    SizeOfUninitializedData         dword ?
    AddressOfEntryPoint             dword ?
    BaseOfCode                      dword ?
    BaseOfData                      dword ?
    ImageBase                       dword ?
    SectionAlignment                dword ?
    FileAlignment                   dword ?
    MajorOperatingSystemVersion     word  ?
    MinorOperatingSystemVersion     word  ?
    MajorImageVersion               word  ?
    MinorImageVersion               word  ?
    MajorSubsystemVersion           word  ?
    MinorSubsystemVersion           word  ?
    Win32VersionValue               dword ?
    SizeOfImage                     dword ?
    SizeOfHeaders                   dword ?
    CheckSum                        dword ?
    Subsystem                       word  ?
    DllCharacteristics              word  ?
    SizeOfStackReserve              dword ?
    SizeOfStackCommit               dword ?
    SizeOfHeapReserve               dword ?
    SizeOfHeapCommit                dword ?
    LoaderFlags                     dword ?
    NumberOfRvaAndSizes             dword ?
    DataDirectory                   IMAGE_DATA_DIRECTORY 16 dup(<?>)
IMAGE_OPTIONAL_HEADER32 ENDS

IMAGE_NT_HEADER STRUCT
    Signature                       dword ?
    FileHeader                      IMAGE_FILE_HEADER <>
    OptionalHeader                  IMAGE_OPTIONAL_HEADER64 <>
IMAGE_NT_HEADER ENDS

IMAGE_NT_HEADER32 STRUCT
    Signature                       dword ?
    FileHeader                      IMAGE_FILE_HEADER <>
    OptionalHeader                  IMAGE_OPTIONAL_HEADER32 <>
IMAGE_NT_HEADER32 ENDS

IMAGE_IMPORT_DESCRIPTOR STRUCT
    OriginalFirstThunk              dword ?
    TimeDateStamp                   dword ?
    ForwarderChain                  dword ?
    Namee                           dword ?
    FirstThunk                      dword ?
IMAGE_IMPORT_DESCRIPTOR ENDS

IMAGE_THUNK_DATA64 STRUCT
    AddressOfData                   qword ?
IMAGE_THUNK_DATA64 ENDS

IMAGE_THUNK_DATA32 STRUCT
    AddressOfData                   dword ?
IMAGE_THUNK_DATA32 ENDS

IMAGE_SECTION_HEADER STRUCT
    Namee                           byte 8 dup(?)
    VirtualSize                     dword ?
    VirtualAddress                  dword ?
    SizeOfRawData                   dword ?
    PointerToRawData                dword ?
    PointerToRelocations            dword ?
    PointerToLinenumbers            dword ?
    NumberOfRelocations             word  ?
    NumberOfLinenumbers             word  ?
    Characteristics                 dword ?
IMAGE_SECTION_HEADER ENDS

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

.data

szDosHeaderTitle        db "******* DOS HEADER *******",10,0
szDosMagic              db 10,"Magic number: ",0
szDose_cblp             db 10,"Bytes on last page of file: ",0
szDose_cp               db 10,"Pages in file: ",0
szDose_crlc             db 10,"Relocations: ",0
szDose_cparhdr          db 10,"Size of header in paragraphs: ",0
szDose_minalloc         db 10,"Minimum extra paragraphs needed: ",0
szDose_maxalloc         db 10,"Maximum extra paragraphs needed: ",0
szDose_ss               db 10,"Initial (relative) SS value: ",0
szDose_sp               db 10,"Initial SP value: ",0
szDose_csum             db 10,"Checksum: ",0
szDose_ip               db 10,"Initial IP value: ",0
szDose_cs               db 10,"Initial (relative) CS value: ",0
szDose_lfarlc           db 10,"File address of relocation table: ",0
szDose_ovno             db 10,"Overlay number: ",0
szDose_oemid            db 10,"OEM identifier (for e_oeminfo): ",0
szDose_oeminfo          db 10,"OEM information; e_oemid specific: ",0
szDose_lfanew           db 10,"File address of new exe header: ",0

szNtHeaderTitle         db 10,10,"******* NT HEADERS *******",10,0
szNtSignature           db 10,"Signature: ",0

szFileHeaderTitle       db 10,10,"******* FILE HEADER *******",10,0
szFileMachine           db 10,"Machine: ",0
szFileNumSections       db 10,"Number of Sections: ",0
szFileTimeStamp         db 10,"Time Stamp: ",0
szFilePtrSymTbl         db 10,"Pointer to Symbol Table: ",0
szFileNumSymbols        db 10,"Number of Symbols: ",0
szFileOptHeaderSize     db 10,"Size of Optional Header: ",0
szFileCharacteristics   db 10,"Characteristics: ",0

szOptHeaderTitle        db 10,10,"******* OPTIONAL HEADER *******",10,0
szOptMagic              db 10,"Magic: ",0
szOptMajorLinker        db 10,"Major Linker Version: ",0
szOptMinorLinker        db 10,"Minor Linker Version: ",0
szOptSizeCode           db 10,"Size Of Code: ",0
szOptSizeInitData       db 10,"Size Of Initialized Data: ",0
szOptSizeUninitData     db 10,"Size Of UnInitialized Data: ",0
szOptEntryPoint         db 10,"Address Of Entry Point (.text): ",0
szOptBaseOfCode         db 10,"Base Of Code: ",0
szOptImageBase          db 10,"Image Base: ",0
szOptSectionAlign       db 10,"Section Alignment: ",0
szOptFileAlign          db 10,"File Alignment: ",0
szOptMajorOS            db 10,"Major Operating System Version: ",0
szOptMinorOS            db 10,"Minor Operating System Version: ",0
szOptMajorImage         db 10,"Major Image Version: ",0
szOptMinorImage         db 10,"Minor Image Version: ",0
szOptMajorSubsystem     db 10,"Major Subsystem Version: ",0
szOptMinorSubsystem     db 10,"Minor Subsystem Version: ",0
szOptWin32Version       db 10,"Win32 Version Value: ",0
szOptSizeImage          db 10,"Size Of Image: ",0
szOptSizeHeaders        db 10,"Size Of Headers: ",0
szOptChecksum           db 10,"CheckSum: ",0
szOptSubsystem          db 10,"Subsystem: ",0
szOptDllChars           db 10,"DllCharacteristics: ",0
szOptStackReserve       db 10,"Size Of Stack Reserve: ",0
szOptStackCommit        db 10,"Size Of Stack Commit: ",0
szOptHeapReserve        db 10,"Size Of Heap Reserve: ",0
szOptHeapCommit         db 10,"Size Of Heap Commit: ",0
szOptLoaderFlags        db 10,"Loader Flags: ",0
szOptNumRvaSizes        db 10,"Number Of Rva And Sizes: ",0

szOptBaseOfData         db 10,"Base Of Data: ",0

szDataDirTitle          db 10,10,"******* DATA DIRECTORIES *******",10,0
szExportDir             db 10,"Export Directory Address: ",0
szImportDir             db 10,"Import Directory Address: ",0

szSectionHeaderTitle    db 10,10,"******* SECTION HEADER *******",10,0
szSecVirtualSize        db 10,"Virtual Size: ",0
szSecVirtualAddress     db 10,"Virtual Address: ",0
szSecSizeOfRawData      db 10,"Size Of Raw Data: ",0
szSecPointerToRawData   db 10,"Pointer To Raw Data: ",0
szSecPointerToReloc     db 10,"Pointer To Relocations: ",0
szSecPointerToLineNum   db 10,"Pointer To Line Numbers: ",0
szSecNumReloc           db 10,"Number Of Relocations: ",0
szSecNumLineNum         db 10,"Number Of Line Numbers: ",0
szSecCharacteristics    db 10,"Characteristics: ",0

szDllImportTitle        db 10,10,"******* DLL IMPORTS *******",10,0
szDllExportTitle        db 10,10,"******* DLL EXPORTS *******",10,0

szOrdinal               db 10,"Ordinal: ",0
szExportRVA             db 10,"RVA: ",0
szExportBase            db 10,"Export Base: ",0
szExportCount           db 10,"Number Of Names: ",0

hexx                    db "0123456789abcdef",0
outstring               db 256 dup(0)
linebreak               db 10,0

szGetCommandLineW       db "GetCommandLineW",0
szCommandLineToArgvW    db "CommandLineToArgvW",0
szGetStdHandle          db "GetStdHandle",0
szWriteConsoleA         db "WriteConsoleA",0
szExitProcess           db "ExitProcess",0
szCreateFileW           db "CreateFileW",0
szReadFile              db "ReadFile",0
szGetFileSize           db "GetFileSize",0
szVirtualAlloc          db "VirtualAlloc",0
szlstrlenA              db "lstrlenA",0
szLoadLibraryA          db "LoadLibraryA",0
szGetProcAddress        db "GetProcAddress",0

szKernel32              db "kernel32.dll",0
szShell32               db "shell32.dll",0

.data?

argc                     dq ?
argv                     dq ?
cmdline                  dq ?
hFile                    dq ?
filesize                 dq ?
lpBuffer                 dq ?
lpNumberOfBytesRead      dq ?
lpNumberOfCharsWritten   dq ?
hOut                     dq ?
peoffset                 dq ?
sectionLocation          dq ?
sectionSize              dq ?
importDirectoryRVA       dq ?
exportDirectoryRVA       dq ?
dem                      dq ?
dung                     dq ?
rawOffset                dq ?
importDescriptor         dq ?
importSection            dq ?
exportSection            dq ?
thunk                    dq ?
thunkData                dq ?
isPE32                   dq ?
exportRawOffset          dq ?
exportDescriptor         dq ?
exportNamesPtr           dq ?
exportOrdinalsPtr        dq ?
exportFuncsPtr           dq ?
exportCount              dq ?
exportBasee              dq ?
exportNamePtr            dq ?

GetCommandLineW          dq ?
CommandLineToArgvW       dq ?
GetStdHandle             dq ?
WriteConsoleA            dq ?
ExitProcess              dq ?
CreateFileW              dq ?
ReadFile                 dq ?
GetFileSize              dq ?
VirtualAlloc             dq ?
lstrlenA                 dq ?
LoadLibraryA             dq ?
GetProcAddress           dq ?

tmpName                  db 64 dup(?)

.code

ResolveOne proc
    push    rbp
    mov     rbp, rsp
    sub     rsp, 40h

    mov     [rbp-8],  rcx
    mov     [rbp-10h],rdx
    mov     [rbp-18h],r8
    mov     [rbp-20h],r9

    mov     rax, [rbp+30h]
    mov     [rbp-28h], rax
    mov     eax, [rbp+38h]
    mov     [rbp-2Ch], eax

    mov     dword ptr [rbp-30h], 0

find_loop:
    mov     eax, [rbp-30h]
    cmp     eax, [rbp-2Ch]
    jae     not_found

    mov     rcx, [rbp-18h]
    mov     edx, dword ptr [rcx + rax*4]
    add     rdx, [rbp-10h]

    mov     r8, rdx
    mov     r9, [rbp-8]

cmp_loop:
    mov     al, [r8]
    mov     dl, [r9]
    cmp     al, dl
    jne     next_name

    test    al, al
    je      found

    inc     r8
    inc     r9
    jmp     cmp_loop

next_name:
    inc     dword ptr [rbp-30h]
    jmp     find_loop

found:
    mov     eax, [rbp-30h]

    mov     rcx, [rbp-20h]
    movzx   eax, word ptr [rcx + rax*2]

    mov     rcx, [rbp-28h]
    mov     eax, dword ptr [rcx + rax*4]
    add     rax, [rbp-10h]
    jmp     done

not_found:
    xor     rax, rax

done:
    mov     rsp, rbp
    pop     rbp
    ret
ResolveOne endp


ResolveAll proc
    push    rbp
    mov     rbp, rsp
    sub     rsp, 80h

    mov     rax, gs:[60h]
    mov     rax, [rax + PEB.Ldr]
    mov     rax, [rax + PEB_LDR_DATA.InMemoryOrderModuleList]

    mov     rax, [rax]
    mov     rax, [rax]
    mov     rax, [rax]

    sub     rax, LDR_DATA_TABLE_ENTRY.InMemoryOrderLinks
    mov     rdx, [rax + LDR_DATA_TABLE_ENTRY.DllBase]
    mov     [rbp-8], rdx

    mov     eax, [rdx + IMAGE_DOS_HEADER.e_lfanew]
    add     rax, rdx

    mov     eax, [rax + IMAGE_NT_HEADER.OptionalHeader + IMAGE_OPTIONAL_HEADER64.DataDirectory + IMAGE_DATA_DIRECTORY.VirtualAddress]
    add     rax, rdx
    mov     [rbp-10h], rax

    mov     rcx, [rbp-10h]
    mov     eax, [rcx + IMAGE_EXPORT_DIRECTORY.NumberOfNames]
    mov     [rbp-14h], eax

    mov     rcx, [rbp-10h]
    mov     eax, [rcx + IMAGE_EXPORT_DIRECTORY.AddressOfFunctions]
    add     rax, [rbp-8]
    mov     [rbp-20h], rax

    mov     rcx, [rbp-10h]
    mov     eax, [rcx + IMAGE_EXPORT_DIRECTORY.AddressOfNames]
    add     rax, [rbp-8]
    mov     [rbp-28h], rax

    mov     rcx, [rbp-10h]
    mov     eax, [rcx + IMAGE_EXPORT_DIRECTORY.AddressOfNameOrdinals]
    add     rax, [rbp-8]
    mov     [rbp-30h], rax

    lea     rcx, szGetProcAddress
    mov     rdx, [rbp-8]
    mov     r8,  [rbp-28h]
    mov     r9,  [rbp-30h]
    mov     rax, [rbp-20h]
    mov     [rsp+20h], rax
    mov     eax, [rbp-14h]
    mov     [rsp+28h], eax
    call    ResolveOne
    mov     qword ptr [GetProcAddress], rax

    lea     rcx, szLoadLibraryA
    mov     rdx, [rbp-8]
    mov     r8,  [rbp-28h]
    mov     r9,  [rbp-30h]
    mov     rax, [rbp-20h]
    mov     [rsp+20h], rax
    mov     eax, [rbp-14h]
    mov     [rsp+28h], eax
    call    ResolveOne
    mov     qword ptr [LoadLibraryA], rax

    mov     rcx, [rbp-8]
    lea     rdx, szGetCommandLineW
    call    qword ptr [GetProcAddress]
    mov     qword ptr [GetCommandLineW], rax

    mov     rcx, [rbp-8]
    lea     rdx, szGetStdHandle
    call    qword ptr [GetProcAddress]
    mov     qword ptr [GetStdHandle], rax

    mov     rcx, [rbp-8]
    lea     rdx, szWriteConsoleA
    call    qword ptr [GetProcAddress]
    mov     qword ptr [WriteConsoleA], rax

    mov     rcx, [rbp-8]
    lea     rdx, szExitProcess
    call    qword ptr [GetProcAddress]
    mov     qword ptr [ExitProcess], rax

    mov     rcx, [rbp-8]
    lea     rdx, szCreateFileW
    call    qword ptr [GetProcAddress]
    mov     qword ptr [CreateFileW], rax

    mov     rcx, [rbp-8]
    lea     rdx, szReadFile
    call    qword ptr [GetProcAddress]
    mov     qword ptr [ReadFile], rax

    mov     rcx, [rbp-8]
    lea     rdx, szGetFileSize
    call    qword ptr [GetProcAddress]
    mov     qword ptr [GetFileSize], rax

    mov     rcx, [rbp-8]
    lea     rdx, szVirtualAlloc
    call    qword ptr [GetProcAddress]
    mov     qword ptr [VirtualAlloc], rax

    mov     rcx, [rbp-8]
    lea     rdx, szlstrlenA
    call    qword ptr [GetProcAddress]
    mov     qword ptr [lstrlenA], rax

    lea     rcx, szShell32
    call    qword ptr [LoadLibraryA]
    mov     [rbp-38h], rax

    test    rax, rax
    jz      done

    mov     rcx, [rbp-38h]
    lea     rdx, szCommandLineToArgvW
    call    qword ptr [GetProcAddress]
    mov     qword ptr [CommandLineToArgvW], rax

done:
    mov     rsp, rbp
    pop     rbp
    ret
ResolveAll endp


tohex proc
    push    rbp
    mov     rbp, rsp
    sub     rsp, 60h

    mov     qword ptr [rsp],    rcx
    mov     qword ptr [rsp+8],  rdx

    lea     rdi, outstring
    lea     rsi, hexx

    add     rdx, rdx
    dec     rdx

looop:
    mov     al, cl
    shl     al, 4
    shr     al, 4
    movzx   rbx, al

    mov     al, byte ptr [rsi+rbx]
    mov     byte ptr [rdi+rdx], al
    dec     rdx
    shr     rcx, 4
    test    rdx, rdx
    jns     looop

    lea     rax, outstring
    mov     rsp, rbp
    pop     rbp
    ret
tohex endp


print proc
    push    rbp
    mov     rbp, rsp
    sub     rsp, 60h

    mov     qword ptr [rsp],    rcx
    mov     qword ptr [rsp+8],  rdx
    mov     qword ptr [rsp+16], r8
    mov     qword ptr [rsp+24], r9

    mov     rcx, r8
    call    qword ptr [lstrlenA]
    mov     r8, rax
    mov     rcx, hOut
    mov     rdx, [rsp+16]
    lea     r9, lpNumberOfCharsWritten
    mov     qword ptr [rsp+20h], 0
    call    qword ptr [WriteConsoleA]

    mov     rcx, [rsp]
    mov     rdx, [rsp+8]
    call    tohex

    mov     rcx, hOut
    lea     rdx, outstring
    mov     r8, [rsp+8]
    add     r8, r8
    lea     r9, lpNumberOfCharsWritten
    mov     qword ptr [rsp+20h], 0
    call    qword ptr [WriteConsoleA]

    mov     rsp, rbp
    pop     rbp
    ret
print endp


mainCRTStartup PROC
    push    rbp
    mov     rbp, rsp
    sub     rsp, 60h

    call    ResolveAll

    call    qword ptr [GetCommandLineW]
    mov     rcx, rax
    lea     rdx, argc
    call    qword ptr [CommandLineToArgvW]
    mov     argv, rax

    mov     rax, argc
    cmp     rax, 1
    jle     exitt

    mov     rbx, argv

    mov     rcx, [rbx+8]
    mov     rdx, 80000000h
    mov     r8,  0
    mov     r9,  0
    mov     dword ptr [rsp+20h], 3h
    mov     dword ptr [rsp+24h], 80h
    mov     qword ptr [rsp+28h], 0
    call    qword ptr [CreateFileW]
    mov     hFile, rax

    mov     rcx, hFile
    mov     rdx, 0
    call    qword ptr [GetFileSize]
    mov     filesize, rax

    mov     rcx, 0
    mov     rdx, filesize
    mov     r8,  3000h
    mov     r9,  40h
    call    qword ptr [VirtualAlloc]
    mov     lpBuffer, rax

    mov     rcx, hFile
    mov     rdx, lpBuffer
    mov     r8,  filesize
    mov     r9,  lpNumberOfBytesRead
    mov     qword ptr [rsp+20h], 0
    call    qword ptr [ReadFile]

    mov     rcx, -11
    call    qword ptr [GetStdHandle]
    mov     hOut, rax

    lea     rcx, szDosHeaderTitle
    mov     rbx, rcx
    call    qword ptr [lstrlenA]
    mov     r8, rax
    mov     rdx, rbx
    mov     rcx, hOut
    lea     r9, lpNumberOfCharsWritten
    mov     qword ptr [rsp+20h], 0
    call    qword ptr [WriteConsoleA]

    mov     rsi, lpBuffer
    movzx   rcx, [rsi].IMAGE_DOS_HEADER.e_magic
    mov     rdx, TYPE IMAGE_DOS_HEADER.e_magic
    lea     r8, szDosMagic
    call    print

    mov     rsi, lpBuffer
    movzx   rcx, [rsi].IMAGE_DOS_HEADER.e_cblp
    mov     rdx, TYPE IMAGE_DOS_HEADER.e_cblp
    lea     r8, szDose_cblp
    call    print

    mov     rsi, lpBuffer
    movzx   rcx, [rsi].IMAGE_DOS_HEADER.e_cp
    mov     rdx, TYPE IMAGE_DOS_HEADER.e_cp
    lea     r8, szDose_cp
    call    print

    mov     rsi, lpBuffer
    movzx   rcx, [rsi].IMAGE_DOS_HEADER.e_crlc
    mov     rdx, TYPE IMAGE_DOS_HEADER.e_crlc
    lea     r8, szDose_crlc
    call    print

    mov     rsi, lpBuffer
    movzx   rcx, [rsi].IMAGE_DOS_HEADER.e_cparhdr
    mov     rdx, TYPE IMAGE_DOS_HEADER.e_cparhdr
    lea     r8, szDose_cparhdr
    call    print

    mov     rsi, lpBuffer
    movzx   rcx, [rsi].IMAGE_DOS_HEADER.e_minalloc
    mov     rdx, TYPE IMAGE_DOS_HEADER.e_minalloc
    lea     r8, szDose_minalloc
    call    print

    mov     rsi, lpBuffer
    movzx   rcx, [rsi].IMAGE_DOS_HEADER.e_maxalloc
    mov     rdx, TYPE IMAGE_DOS_HEADER.e_maxalloc
    lea     r8, szDose_maxalloc
    call    print

    mov     rsi, lpBuffer
    movzx   rcx, [rsi].IMAGE_DOS_HEADER.e_ss
    mov     rdx, TYPE IMAGE_DOS_HEADER.e_ss
    lea     r8, szDose_ss
    call    print

    mov     rsi, lpBuffer
    movzx   rcx, [rsi].IMAGE_DOS_HEADER.e_sp
    mov     rdx, TYPE IMAGE_DOS_HEADER.e_sp
    lea     r8, szDose_sp
    call    print

    mov     rsi, lpBuffer
    movzx   rcx, [rsi].IMAGE_DOS_HEADER.e_csum
    mov     rdx, TYPE IMAGE_DOS_HEADER.e_csum
    lea     r8, szDose_csum
    call    print

    mov     rsi, lpBuffer
    movzx   rcx, [rsi].IMAGE_DOS_HEADER.e_ip
    mov     rdx, TYPE IMAGE_DOS_HEADER.e_ip
    lea     r8, szDose_ip
    call    print

    mov     rsi, lpBuffer
    movzx   rcx, [rsi].IMAGE_DOS_HEADER.e_cs
    mov     rdx, TYPE IMAGE_DOS_HEADER.e_cs
    lea     r8, szDose_cs
    call    print

    mov     rsi, lpBuffer
    movzx   rcx, [rsi].IMAGE_DOS_HEADER.e_lfarlc
    mov     rdx, TYPE IMAGE_DOS_HEADER.e_lfarlc
    lea     r8, szDose_lfarlc
    call    print

    mov     rsi, lpBuffer
    movzx   rcx, [rsi].IMAGE_DOS_HEADER.e_ovno
    mov     rdx, TYPE IMAGE_DOS_HEADER.e_ovno
    lea     r8, szDose_ovno
    call    print

    mov     rsi, lpBuffer
    movzx   rcx, [rsi].IMAGE_DOS_HEADER.e_oemid
    mov     rdx, TYPE IMAGE_DOS_HEADER.e_oemid
    lea     r8, szDose_oemid
    call    print

    mov     rsi, lpBuffer
    movzx   rcx, [rsi].IMAGE_DOS_HEADER.e_oeminfo
    mov     rdx, TYPE IMAGE_DOS_HEADER.e_oeminfo
    lea     r8, szDose_oeminfo
    call    print

    mov     rsi, lpBuffer
    mov     ecx, [rsi].IMAGE_DOS_HEADER.e_lfanew
    mov     peoffset, rcx
    mov     rdx, TYPE IMAGE_DOS_HEADER.e_lfanew
    lea     r8, szDose_lfanew
    call    print

    lea     rcx, szNtHeaderTitle
    mov     rbx, rcx
    call    qword ptr [lstrlenA]
    mov     r8, rax
    mov     rdx, rbx
    mov     rcx, hOut
    lea     r9, lpNumberOfCharsWritten
    mov     qword ptr [rsp+20h], 0
    call    qword ptr [WriteConsoleA]

    mov     rsi, lpBuffer
    add     rsi, peoffset
    mov     ecx, [rsi].IMAGE_NT_HEADER.Signature
    mov     rdx, TYPE IMAGE_NT_HEADER.Signature
    lea     r8, szNtSignature
    call    print

    lea     rcx, szFileHeaderTitle
    mov     rbx, rcx
    call    qword ptr [lstrlenA]
    mov     r8, rax
    mov     rdx, rbx
    mov     rcx, hOut
    lea     r9, lpNumberOfCharsWritten
    mov     qword ptr [rsp+20h], 0
    call    qword ptr [WriteConsoleA]

    mov     rsi, lpBuffer
    add     rsi, peoffset
    movzx   rcx, [rsi].IMAGE_NT_HEADER.FileHeader.Machine
    mov     rdx, TYPE IMAGE_NT_HEADER.FileHeader.Machine
    lea     r8, szFileMachine
    call    print

    mov     rsi, lpBuffer
    add     rsi, peoffset
    movzx   rcx, [rsi].IMAGE_NT_HEADER.FileHeader.NumberOfSections
    mov     rdx, TYPE IMAGE_NT_HEADER.FileHeader.NumberOfSections
    lea     r8, szFileNumSections
    call    print

    mov     rsi, lpBuffer
    add     rsi, peoffset
    mov     ecx, [rsi].IMAGE_NT_HEADER.FileHeader.TimeDateStamp
    mov     rdx, TYPE IMAGE_NT_HEADER.FileHeader.TimeDateStamp
    lea     r8, szFileTimeStamp
    call    print

    mov     rsi, lpBuffer
    add     rsi, peoffset
    mov     ecx, [rsi].IMAGE_NT_HEADER.FileHeader.PointerToSymbolTable
    mov     rdx, TYPE IMAGE_NT_HEADER.FileHeader.PointerToSymbolTable
    lea     r8, szFilePtrSymTbl
    call    print

    mov     rsi, lpBuffer
    add     rsi, peoffset
    mov     ecx, [rsi].IMAGE_NT_HEADER.FileHeader.NumberOfSymbols
    mov     rdx, TYPE IMAGE_NT_HEADER.FileHeader.NumberOfSymbols
    lea     r8, szFileNumSymbols
    call    print

    mov     rsi, lpBuffer
    add     rsi, peoffset
    movzx   rcx, [rsi].IMAGE_NT_HEADER.FileHeader.SizeOfOptionalHeader
    mov     rdx, TYPE IMAGE_NT_HEADER.FileHeader.SizeOfOptionalHeader
    lea     r8, szFileOptHeaderSize
    call    print

    mov     rsi, lpBuffer
    add     rsi, peoffset
    movzx   rcx, [rsi].IMAGE_NT_HEADER.FileHeader.Characteristics
    mov     rdx, TYPE IMAGE_NT_HEADER.FileHeader.Characteristics
    lea     r8, szFileCharacteristics
    call    print

    mov     rsi, lpBuffer
    add     rsi, peoffset
    movzx   rax, [rsi].IMAGE_NT_HEADER.OptionalHeader.Magic
    cmp     ax, 010Bh
    je      parse_pe32
    jmp     parse_pe64

parse_pe32:
    mov     qword ptr isPE32, 1

    lea     rcx, szOptHeaderTitle
    mov     rbx, rcx
    call    qword ptr [lstrlenA]
    mov     r8, rax
    mov     rdx, rbx
    mov     rcx, hOut
    lea     r9, lpNumberOfCharsWritten
    mov     qword ptr [rsp+20h], 0
    call    qword ptr [WriteConsoleA]

    mov     rsi, lpBuffer
    add     rsi, peoffset
    movzx   rcx, [rsi].IMAGE_NT_HEADER32.OptionalHeader.Magic
    mov     rdx, TYPE IMAGE_NT_HEADER32.OptionalHeader.Magic
    lea     r8, szOptMagic
    call    print

    mov     rsi, lpBuffer
    add     rsi, peoffset
    movzx   rcx, [rsi].IMAGE_NT_HEADER32.OptionalHeader.MajorLinkerVersion
    mov     rdx, TYPE IMAGE_NT_HEADER32.OptionalHeader.MajorLinkerVersion
    lea     r8, szOptMajorLinker
    call    print

    mov     rsi, lpBuffer
    add     rsi, peoffset
    movzx   rcx, [rsi].IMAGE_NT_HEADER32.OptionalHeader.MinorLinkerVersion
    mov     rdx, TYPE IMAGE_NT_HEADER32.OptionalHeader.MinorLinkerVersion
    lea     r8, szOptMinorLinker
    call    print

    mov     rsi, lpBuffer
    add     rsi, peoffset
    mov     ecx, [rsi].IMAGE_NT_HEADER32.OptionalHeader.SizeOfCode
    mov     rdx, TYPE IMAGE_NT_HEADER32.OptionalHeader.SizeOfCode
    lea     r8, szOptSizeCode
    call    print

    mov     rsi, lpBuffer
    add     rsi, peoffset
    mov     ecx, [rsi].IMAGE_NT_HEADER32.OptionalHeader.SizeOfInitializedData
    mov     rdx, TYPE IMAGE_NT_HEADER32.OptionalHeader.SizeOfInitializedData
    lea     r8, szOptSizeInitData
    call    print

    mov     rsi, lpBuffer
    add     rsi, peoffset
    mov     ecx, [rsi].IMAGE_NT_HEADER32.OptionalHeader.SizeOfUninitializedData
    mov     rdx, TYPE IMAGE_NT_HEADER32.OptionalHeader.SizeOfUninitializedData
    lea     r8, szOptSizeUninitData
    call    print

    mov     rsi, lpBuffer
    add     rsi, peoffset
    mov     ecx, [rsi].IMAGE_NT_HEADER32.OptionalHeader.AddressOfEntryPoint
    mov     rdx, TYPE IMAGE_NT_HEADER32.OptionalHeader.AddressOfEntryPoint
    lea     r8, szOptEntryPoint
    call    print

    mov     rsi, lpBuffer
    add     rsi, peoffset
    mov     ecx, [rsi].IMAGE_NT_HEADER32.OptionalHeader.BaseOfCode
    mov     rdx, TYPE IMAGE_NT_HEADER32.OptionalHeader.BaseOfCode
    lea     r8, szOptBaseOfCode
    call    print

    mov     rsi, lpBuffer
    add     rsi, peoffset
    mov     ecx, [rsi].IMAGE_NT_HEADER32.OptionalHeader.BaseOfData
    mov     rdx, TYPE IMAGE_NT_HEADER32.OptionalHeader.BaseOfData
    lea     r8, szOptBaseOfData
    call    print

    mov     rsi, lpBuffer
    add     rsi, peoffset
    mov     ecx, [rsi].IMAGE_NT_HEADER32.OptionalHeader.ImageBase
    mov     rdx, TYPE IMAGE_NT_HEADER32.OptionalHeader.ImageBase
    lea     r8, szOptImageBase
    call    print

    mov     rsi, lpBuffer
    add     rsi, peoffset
    mov     ecx, [rsi].IMAGE_NT_HEADER32.OptionalHeader.SectionAlignment
    mov     rdx, TYPE IMAGE_NT_HEADER32.OptionalHeader.SectionAlignment
    lea     r8, szOptSectionAlign
    call    print

    mov     rsi, lpBuffer
    add     rsi, peoffset
    mov     ecx, [rsi].IMAGE_NT_HEADER32.OptionalHeader.FileAlignment
    mov     rdx, TYPE IMAGE_NT_HEADER32.OptionalHeader.FileAlignment
    lea     r8, szOptFileAlign
    call    print

    mov     rsi, lpBuffer
    add     rsi, peoffset
    movzx   rcx, [rsi].IMAGE_NT_HEADER32.OptionalHeader.MajorOperatingSystemVersion
    mov     rdx, TYPE IMAGE_NT_HEADER32.OptionalHeader.MajorOperatingSystemVersion
    lea     r8, szOptMajorOS
    call    print

    mov     rsi, lpBuffer
    add     rsi, peoffset
    movzx   rcx, [rsi].IMAGE_NT_HEADER32.OptionalHeader.MinorOperatingSystemVersion
    mov     rdx, TYPE IMAGE_NT_HEADER32.OptionalHeader.MinorOperatingSystemVersion
    lea     r8, szOptMinorOS
    call    print

    mov     rsi, lpBuffer
    add     rsi, peoffset
    movzx   rcx, [rsi].IMAGE_NT_HEADER32.OptionalHeader.MajorImageVersion
    mov     rdx, TYPE IMAGE_NT_HEADER32.OptionalHeader.MajorImageVersion
    lea     r8, szOptMajorImage
    call    print

    mov     rsi, lpBuffer
    add     rsi, peoffset
    movzx   rcx, [rsi].IMAGE_NT_HEADER32.OptionalHeader.MinorImageVersion
    mov     rdx, TYPE IMAGE_NT_HEADER32.OptionalHeader.MinorImageVersion
    lea     r8, szOptMinorImage
    call    print

    mov     rsi, lpBuffer
    add     rsi, peoffset
    movzx   rcx, [rsi].IMAGE_NT_HEADER32.OptionalHeader.MajorSubsystemVersion
    mov     rdx, TYPE IMAGE_NT_HEADER32.OptionalHeader.MajorSubsystemVersion
    lea     r8, szOptMajorSubsystem
    call    print

    mov     rsi, lpBuffer
    add     rsi, peoffset
    movzx   rcx, [rsi].IMAGE_NT_HEADER32.OptionalHeader.MinorSubsystemVersion
    mov     rdx, TYPE IMAGE_NT_HEADER32.OptionalHeader.MinorSubsystemVersion
    lea     r8, szOptMinorSubsystem
    call    print

    mov     rsi, lpBuffer
    add     rsi, peoffset
    mov     ecx, [rsi].IMAGE_NT_HEADER32.OptionalHeader.Win32VersionValue
    mov     rdx, TYPE IMAGE_NT_HEADER32.OptionalHeader.Win32VersionValue
    lea     r8, szOptWin32Version
    call    print

    mov     rsi, lpBuffer
    add     rsi, peoffset
    mov     ecx, [rsi].IMAGE_NT_HEADER32.OptionalHeader.SizeOfImage
    mov     rdx, TYPE IMAGE_NT_HEADER32.OptionalHeader.SizeOfImage
    lea     r8, szOptSizeImage
    call    print

    mov     rsi, lpBuffer
    add     rsi, peoffset
    mov     ecx, [rsi].IMAGE_NT_HEADER32.OptionalHeader.SizeOfHeaders
    mov     rdx, TYPE IMAGE_NT_HEADER32.OptionalHeader.SizeOfHeaders
    lea     r8, szOptSizeHeaders
    call    print

    mov     rsi, lpBuffer
    add     rsi, peoffset
    mov     ecx, [rsi].IMAGE_NT_HEADER32.OptionalHeader.CheckSum
    mov     rdx, TYPE IMAGE_NT_HEADER32.OptionalHeader.CheckSum
    lea     r8, szOptChecksum
    call    print

    mov     rsi, lpBuffer
    add     rsi, peoffset
    movzx   rcx, [rsi].IMAGE_NT_HEADER32.OptionalHeader.Subsystem
    mov     rdx, TYPE IMAGE_NT_HEADER32.OptionalHeader.Subsystem
    lea     r8, szOptSubsystem
    call    print

    mov     rsi, lpBuffer
    add     rsi, peoffset
    movzx   rcx, [rsi].IMAGE_NT_HEADER32.OptionalHeader.DllCharacteristics
    mov     rdx, TYPE IMAGE_NT_HEADER32.OptionalHeader.DllCharacteristics
    lea     r8, szOptDllChars
    call    print

    mov     rsi, lpBuffer
    add     rsi, peoffset
    mov     ecx, [rsi].IMAGE_NT_HEADER32.OptionalHeader.SizeOfStackReserve
    mov     rdx, TYPE IMAGE_NT_HEADER32.OptionalHeader.SizeOfStackReserve
    lea     r8, szOptStackReserve
    call    print

    mov     rsi, lpBuffer
    add     rsi, peoffset
    mov     ecx, [rsi].IMAGE_NT_HEADER32.OptionalHeader.SizeOfStackCommit
    mov     rdx, TYPE IMAGE_NT_HEADER32.OptionalHeader.SizeOfStackCommit
    lea     r8, szOptStackCommit
    call    print

    mov     rsi, lpBuffer
    add     rsi, peoffset
    mov     ecx, [rsi].IMAGE_NT_HEADER32.OptionalHeader.SizeOfHeapReserve
    mov     rdx, TYPE IMAGE_NT_HEADER32.OptionalHeader.SizeOfHeapReserve
    lea     r8, szOptHeapReserve
    call    print

    mov     rsi, lpBuffer
    add     rsi, peoffset
    mov     ecx, [rsi].IMAGE_NT_HEADER32.OptionalHeader.SizeOfHeapCommit
    mov     rdx, TYPE IMAGE_NT_HEADER32.OptionalHeader.SizeOfHeapCommit
    lea     r8, szOptHeapCommit
    call    print

    mov     rsi, lpBuffer
    add     rsi, peoffset
    mov     ecx, [rsi].IMAGE_NT_HEADER32.OptionalHeader.LoaderFlags
    mov     rdx, TYPE IMAGE_NT_HEADER32.OptionalHeader.LoaderFlags
    lea     r8, szOptLoaderFlags
    call    print

    mov     rsi, lpBuffer
    add     rsi, peoffset
    mov     ecx, [rsi].IMAGE_NT_HEADER32.OptionalHeader.NumberOfRvaAndSizes
    mov     rdx, TYPE IMAGE_NT_HEADER32.OptionalHeader.NumberOfRvaAndSizes
    lea     r8, szOptNumRvaSizes
    call    print

    lea     rcx, szDataDirTitle
    mov     rbx, rcx
    call    qword ptr [lstrlenA]
    mov     r8, rax
    mov     rdx, rbx
    mov     rcx, hOut
    lea     r9, lpNumberOfCharsWritten
    mov     qword ptr [rsp+20h], 0
    call    qword ptr [WriteConsoleA]

    mov     rsi, lpBuffer
    add     rsi, peoffset
    mov     ecx, [rsi].IMAGE_NT_HEADER32.OptionalHeader.DataDirectory[0 * SIZEOF IMAGE_DATA_DIRECTORY].VirtualAddress
    mov     exportDirectoryRVA, rcx
    mov     rdx, TYPE IMAGE_DATA_DIRECTORY.VirtualAddress
    lea     r8, szExportDir
    call    print

    mov     rsi, lpBuffer
    add     rsi, peoffset
    mov     ecx, [rsi].IMAGE_NT_HEADER32.OptionalHeader.DataDirectory[1 * SIZEOF IMAGE_DATA_DIRECTORY].VirtualAddress
    mov     importDirectoryRVA, rcx
    mov     rdx, TYPE IMAGE_DATA_DIRECTORY.VirtualAddress
    lea     r8, szImportDir
    call    print

    mov     rsi, lpBuffer
    add     rsi, peoffset
    movzx   rcx, [rsi].IMAGE_NT_HEADER32.FileHeader.SizeOfOptionalHeader
    add     rsi, rcx
    add     rsi, 4
    add     rsi, SIZEOF IMAGE_FILE_HEADER
    mov     sectionLocation, rsi

    jmp     parse_sections

parse_pe64:
    mov     qword ptr isPE32, 0

    lea     rcx, szOptHeaderTitle
    mov     rbx, rcx
    call    qword ptr [lstrlenA]
    mov     r8, rax
    mov     rdx, rbx
    mov     rcx, hOut
    lea     r9, lpNumberOfCharsWritten
    mov     qword ptr [rsp+20h], 0
    call    qword ptr [WriteConsoleA]

    mov     rsi, lpBuffer
    add     rsi, peoffset
    movzx   rcx, [rsi].IMAGE_NT_HEADER.OptionalHeader.Magic
    mov     rdx, TYPE IMAGE_NT_HEADER.OptionalHeader.Magic
    lea     r8, szOptMagic
    call    print

    mov     rsi, lpBuffer
    add     rsi, peoffset
    movzx   rcx, [rsi].IMAGE_NT_HEADER.OptionalHeader.MajorLinkerVersion
    mov     rdx, TYPE IMAGE_NT_HEADER.OptionalHeader.MajorLinkerVersion
    lea     r8, szOptMajorLinker
    call    print

    mov     rsi, lpBuffer
    add     rsi, peoffset
    movzx   rcx, [rsi].IMAGE_NT_HEADER.OptionalHeader.MinorLinkerVersion
    mov     rdx, TYPE IMAGE_NT_HEADER.OptionalHeader.MinorLinkerVersion
    lea     r8, szOptMinorLinker
    call    print

    mov     rsi, lpBuffer
    add     rsi, peoffset
    mov     ecx, [rsi].IMAGE_NT_HEADER.OptionalHeader.SizeOfCode
    mov     rdx, TYPE IMAGE_NT_HEADER.OptionalHeader.SizeOfCode
    lea     r8, szOptSizeCode
    call    print

    mov     rsi, lpBuffer
    add     rsi, peoffset
    mov     ecx, [rsi].IMAGE_NT_HEADER.OptionalHeader.SizeOfInitializedData
    mov     rdx, TYPE IMAGE_NT_HEADER.OptionalHeader.SizeOfInitializedData
    lea     r8, szOptSizeInitData
    call    print

    mov     rsi, lpBuffer
    add     rsi, peoffset
    mov     ecx, [rsi].IMAGE_NT_HEADER.OptionalHeader.SizeOfUninitializedData
    mov     rdx, TYPE IMAGE_NT_HEADER.OptionalHeader.SizeOfUninitializedData
    lea     r8, szOptSizeUninitData
    call    print

    mov     rsi, lpBuffer
    add     rsi, peoffset
    mov     ecx, [rsi].IMAGE_NT_HEADER.OptionalHeader.AddressOfEntryPoint
    mov     rdx, TYPE IMAGE_NT_HEADER.OptionalHeader.AddressOfEntryPoint
    lea     r8, szOptEntryPoint
    call    print

    mov     rsi, lpBuffer
    add     rsi, peoffset
    mov     ecx, [rsi].IMAGE_NT_HEADER.OptionalHeader.BaseOfCode
    mov     rdx, TYPE IMAGE_NT_HEADER.OptionalHeader.BaseOfCode
    lea     r8, szOptBaseOfCode
    call    print

    mov     rsi, lpBuffer
    add     rsi, peoffset
    mov     rcx, [rsi].IMAGE_NT_HEADER.OptionalHeader.ImageBase
    mov     rdx, TYPE IMAGE_NT_HEADER.OptionalHeader.ImageBase
    lea     r8, szOptImageBase
    call    print

    mov     rsi, lpBuffer
    add     rsi, peoffset
    mov     ecx, [rsi].IMAGE_NT_HEADER.OptionalHeader.SectionAlignment
    mov     rdx, TYPE IMAGE_NT_HEADER.OptionalHeader.SectionAlignment
    lea     r8, szOptSectionAlign
    call    print

    mov     rsi, lpBuffer
    add     rsi, peoffset
    mov     ecx, [rsi].IMAGE_NT_HEADER.OptionalHeader.FileAlignment
    mov     rdx, TYPE IMAGE_NT_HEADER.OptionalHeader.FileAlignment
    lea     r8, szOptFileAlign
    call    print

    mov     rsi, lpBuffer
    add     rsi, peoffset
    movzx   rcx, [rsi].IMAGE_NT_HEADER.OptionalHeader.MajorOperatingSystemVersion
    mov     rdx, TYPE IMAGE_NT_HEADER.OptionalHeader.MajorOperatingSystemVersion
    lea     r8, szOptMajorOS
    call    print

    mov     rsi, lpBuffer
    add     rsi, peoffset
    movzx   rcx, [rsi].IMAGE_NT_HEADER.OptionalHeader.MinorOperatingSystemVersion
    mov     rdx, TYPE IMAGE_NT_HEADER.OptionalHeader.MinorOperatingSystemVersion
    lea     r8, szOptMinorOS
    call    print

    mov     rsi, lpBuffer
    add     rsi, peoffset
    movzx   rcx, [rsi].IMAGE_NT_HEADER.OptionalHeader.MajorImageVersion
    mov     rdx, TYPE IMAGE_NT_HEADER.OptionalHeader.MajorImageVersion
    lea     r8, szOptMajorImage
    call    print

    mov     rsi, lpBuffer
    add     rsi, peoffset
    movzx   rcx, [rsi].IMAGE_NT_HEADER.OptionalHeader.MinorImageVersion
    mov     rdx, TYPE IMAGE_NT_HEADER.OptionalHeader.MinorImageVersion
    lea     r8, szOptMinorImage
    call    print

    mov     rsi, lpBuffer
    add     rsi, peoffset
    movzx   rcx, [rsi].IMAGE_NT_HEADER.OptionalHeader.MajorSubsystemVersion
    mov     rdx, TYPE IMAGE_NT_HEADER.OptionalHeader.MajorSubsystemVersion
    lea     r8, szOptMajorSubsystem
    call    print

    mov     rsi, lpBuffer
    add     rsi, peoffset
    movzx   rcx, [rsi].IMAGE_NT_HEADER.OptionalHeader.MinorSubsystemVersion
    mov     rdx, TYPE IMAGE_NT_HEADER.OptionalHeader.MinorSubsystemVersion
    lea     r8, szOptMinorSubsystem
    call    print

    mov     rsi, lpBuffer
    add     rsi, peoffset
    mov     ecx, [rsi].IMAGE_NT_HEADER.OptionalHeader.Win32VersionValue
    mov     rdx, TYPE IMAGE_NT_HEADER.OptionalHeader.Win32VersionValue
    lea     r8, szOptWin32Version
    call    print

    mov     rsi, lpBuffer
    add     rsi, peoffset
    mov     ecx, [rsi].IMAGE_NT_HEADER.OptionalHeader.SizeOfImage
    mov     rdx, TYPE IMAGE_NT_HEADER.OptionalHeader.SizeOfImage
    lea     r8, szOptSizeImage
    call    print

    mov     rsi, lpBuffer
    add     rsi, peoffset
    mov     ecx, [rsi].IMAGE_NT_HEADER.OptionalHeader.SizeOfHeaders
    mov     rdx, TYPE IMAGE_NT_HEADER.OptionalHeader.SizeOfHeaders
    lea     r8, szOptSizeHeaders
    call    print

    mov     rsi, lpBuffer
    add     rsi, peoffset
    mov     ecx, [rsi].IMAGE_NT_HEADER.OptionalHeader.CheckSum
    mov     rdx, TYPE IMAGE_NT_HEADER.OptionalHeader.CheckSum
    lea     r8, szOptChecksum
    call    print

    mov     rsi, lpBuffer
    add     rsi, peoffset
    movzx   rcx, [rsi].IMAGE_NT_HEADER.OptionalHeader.Subsystem
    mov     rdx, TYPE IMAGE_NT_HEADER.OptionalHeader.Subsystem
    lea     r8, szOptSubsystem
    call    print

    mov     rsi, lpBuffer
    add     rsi, peoffset
    movzx   rcx, [rsi].IMAGE_NT_HEADER.OptionalHeader.DllCharacteristics
    mov     rdx, TYPE IMAGE_NT_HEADER.OptionalHeader.DllCharacteristics
    lea     r8, szOptDllChars
    call    print

    mov     rsi, lpBuffer
    add     rsi, peoffset
    mov     rcx, [rsi].IMAGE_NT_HEADER.OptionalHeader.SizeOfStackReserve
    mov     rdx, TYPE IMAGE_NT_HEADER.OptionalHeader.SizeOfStackReserve
    lea     r8, szOptStackReserve
    call    print

    mov     rsi, lpBuffer
    add     rsi, peoffset
    mov     rcx, [rsi].IMAGE_NT_HEADER.OptionalHeader.SizeOfStackCommit
    mov     rdx, TYPE IMAGE_NT_HEADER.OptionalHeader.SizeOfStackCommit
    lea     r8, szOptStackCommit
    call    print

    mov     rsi, lpBuffer
    add     rsi, peoffset
    mov     rcx, [rsi].IMAGE_NT_HEADER.OptionalHeader.SizeOfHeapReserve
    mov     rdx, TYPE IMAGE_NT_HEADER.OptionalHeader.SizeOfHeapReserve
    lea     r8, szOptHeapReserve
    call    print

    mov     rsi, lpBuffer
    add     rsi, peoffset
    mov     rcx, [rsi].IMAGE_NT_HEADER.OptionalHeader.SizeOfHeapCommit
    mov     rdx, TYPE IMAGE_NT_HEADER.OptionalHeader.SizeOfHeapCommit
    lea     r8, szOptHeapCommit
    call    print

    mov     rsi, lpBuffer
    add     rsi, peoffset
    mov     ecx, [rsi].IMAGE_NT_HEADER.OptionalHeader.LoaderFlags
    mov     rdx, TYPE IMAGE_NT_HEADER.OptionalHeader.LoaderFlags
    lea     r8, szOptLoaderFlags
    call    print

    mov     rsi, lpBuffer
    add     rsi, peoffset
    mov     ecx, [rsi].IMAGE_NT_HEADER.OptionalHeader.NumberOfRvaAndSizes
    mov     rdx, TYPE IMAGE_NT_HEADER.OptionalHeader.NumberOfRvaAndSizes
    lea     r8, szOptNumRvaSizes
    call    print

    lea     rcx, szDataDirTitle
    mov     rbx, rcx
    call    qword ptr [lstrlenA]
    mov     r8, rax
    mov     rdx, rbx
    mov     rcx, hOut
    lea     r9, lpNumberOfCharsWritten
    mov     qword ptr [rsp+20h], 0
    call    qword ptr [WriteConsoleA]

    mov     rsi, lpBuffer
    add     rsi, peoffset
    mov     ecx, [rsi].IMAGE_NT_HEADER.OptionalHeader.DataDirectory[0 * SIZEOF IMAGE_DATA_DIRECTORY].VirtualAddress
    mov     exportDirectoryRVA, rcx
    mov     rdx, TYPE IMAGE_DATA_DIRECTORY.VirtualAddress
    lea     r8, szExportDir
    call    print

    mov     rsi, lpBuffer
    add     rsi, peoffset
    mov     ecx, [rsi].IMAGE_NT_HEADER.OptionalHeader.DataDirectory[1 * SIZEOF IMAGE_DATA_DIRECTORY].VirtualAddress
    mov     importDirectoryRVA, rcx
    mov     rdx, TYPE IMAGE_DATA_DIRECTORY.VirtualAddress
    lea     r8, szImportDir
    call    print

    mov     rsi, lpBuffer
    add     rsi, peoffset
    movzx   rcx, [rsi].IMAGE_NT_HEADER.FileHeader.SizeOfOptionalHeader
    add     rsi, rcx
    add     rsi, 4
    add     rsi, SIZEOF IMAGE_FILE_HEADER
    mov     sectionLocation, rsi

parse_sections:
    mov     rcx, SIZEOF IMAGE_SECTION_HEADER
    mov     sectionSize, rcx

    lea     rcx, szSectionHeaderTitle
    mov     rbx, rcx
    call    qword ptr [lstrlenA]
    mov     r8, rax
    mov     rdx, rbx
    mov     rcx, hOut
    lea     r9, lpNumberOfCharsWritten
    mov     qword ptr [rsp+20h], 0
    call    qword ptr [WriteConsoleA]

    xor     rax, rax
    mov     dem, rax

    mov     rsi, lpBuffer
    add     rsi, peoffset
    movzx   rbx, [rsi].IMAGE_NT_HEADER.FileHeader.NumberOfSections
    mov     dung, rbx

section_loop:
    lea     rdx, linebreak
    mov     rcx, hOut
    mov     r8,  2
    lea     r9, lpNumberOfCharsWritten
    mov     qword ptr [rsp+20h], 0
    call    qword ptr [WriteConsoleA]

    mov     rsi, sectionLocation
    lea     rdx, [rsi].IMAGE_SECTION_HEADER.Namee
    mov     rcx, hOut
    mov     r8,  8
    lea     r9, lpNumberOfCharsWritten
    mov     qword ptr [rsp+20h], 0
    call    qword ptr [WriteConsoleA]

    mov     rsi, sectionLocation
    mov     ecx, [rsi].IMAGE_SECTION_HEADER.VirtualSize
    mov     rdx, TYPE IMAGE_SECTION_HEADER.VirtualSize
    lea     r8, szSecVirtualSize
    call    print

    mov     rsi, sectionLocation
    mov     ecx, [rsi].IMAGE_SECTION_HEADER.VirtualAddress
    mov     rdx, TYPE IMAGE_SECTION_HEADER.VirtualAddress
    lea     r8, szSecVirtualAddress
    call    print

    mov     rsi, sectionLocation
    mov     ecx, [rsi].IMAGE_SECTION_HEADER.SizeOfRawData
    mov     rdx, TYPE IMAGE_SECTION_HEADER.SizeOfRawData
    lea     r8, szSecSizeOfRawData
    call    print

    mov     rsi, sectionLocation
    mov     ecx, [rsi].IMAGE_SECTION_HEADER.PointerToRawData
    mov     rdx, TYPE IMAGE_SECTION_HEADER.PointerToRawData
    lea     r8, szSecPointerToRawData
    call    print

    mov     rsi, sectionLocation
    mov     ecx, [rsi].IMAGE_SECTION_HEADER.PointerToRelocations
    mov     rdx, TYPE IMAGE_SECTION_HEADER.PointerToRelocations
    lea     r8, szSecPointerToReloc
    call    print

    mov     rsi, sectionLocation
    mov     ecx, [rsi].IMAGE_SECTION_HEADER.PointerToLinenumbers
    mov     rdx, TYPE IMAGE_SECTION_HEADER.PointerToLinenumbers
    lea     r8, szSecPointerToLineNum
    call    print

    mov     rsi, sectionLocation
    movzx   rcx, [rsi].IMAGE_SECTION_HEADER.NumberOfRelocations
    mov     rdx, TYPE IMAGE_SECTION_HEADER.NumberOfRelocations
    lea     r8, szSecNumReloc
    call    print

    mov     rsi, sectionLocation
    movzx   rcx, [rsi].IMAGE_SECTION_HEADER.NumberOfLinenumbers
    mov     rdx, TYPE IMAGE_SECTION_HEADER.NumberOfLinenumbers
    lea     r8, szSecNumLineNum
    call    print

    mov     rsi, sectionLocation
    mov     ecx, [rsi].IMAGE_SECTION_HEADER.Characteristics
    mov     rdx, TYPE IMAGE_SECTION_HEADER.Characteristics
    lea     r8, szSecCharacteristics
    call    print

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
check_import_done:

    mov     rsi, sectionLocation
    mov     ecx, [rsi].IMAGE_SECTION_HEADER.VirtualAddress
    mov     rdx, exportDirectoryRVA
    cmp     rdx, rcx
    jl      check_export_done
    add     ecx, [rsi].IMAGE_SECTION_HEADER.VirtualSize
    cmp     rdx, rcx
    jge     check_export_done
    mov     rax, sectionLocation
    mov     exportSection, rax
check_export_done:

    mov     rax, sectionLocation
    add     rax, sectionSize
    mov     sectionLocation, rax

    mov     rax, dem
    mov     rbx, dung
    inc     rax
    mov     dem, rax
    cmp     rax, rbx
    jb      section_loop

    mov     rax, exportDirectoryRVA
    cmp     rax, 0
    je      skip_export_parse

    mov     rsi, exportSection
    mov     ecx, [rsi].IMAGE_SECTION_HEADER.PointerToRawData
    mov     rsi, lpBuffer
    add     rsi, rcx
    mov     exportRawOffset, rsi

    mov     rdx, exportRawOffset
    mov     rcx, exportDirectoryRVA
    add     rcx, rdx
    mov     rsi, exportSection
    mov     edx, [rsi].IMAGE_SECTION_HEADER.VirtualAddress
    sub     rcx, rdx
    mov     exportDescriptor, rcx

    lea     rcx, szDllExportTitle
    mov     rbx, rcx
    call    qword ptr [lstrlenA]
    mov     r8, rax
    mov     rdx, rbx
    mov     rcx, hOut
    lea     r9, lpNumberOfCharsWritten
    mov     qword ptr [rsp+20h], 0
    call    qword ptr [WriteConsoleA]

    mov     rsi, exportDescriptor
    mov     ecx, [rsi].IMAGE_EXPORT_DIRECTORY.Base2
    mov     exportBasee, rcx
    mov     rdx, TYPE IMAGE_EXPORT_DIRECTORY.Base2
    lea     r8, szExportBase
    call    print

    mov     rsi, exportDescriptor
    mov     ecx, [rsi].IMAGE_EXPORT_DIRECTORY.NumberOfNames
    mov     exportCount, rcx
    mov     rdx, TYPE IMAGE_EXPORT_DIRECTORY.NumberOfNames
    lea     r8, szExportCount
    call    print

    mov     rsi, exportDescriptor
    mov     ecx, [rsi].IMAGE_EXPORT_DIRECTORY.AddressOfNames
    mov     rdx, exportRawOffset
    add     rcx, rdx
    mov     rsi, exportSection
    mov     edx, [rsi].IMAGE_SECTION_HEADER.VirtualAddress
    sub     rcx, rdx
    mov     exportNamesPtr, rcx

    mov     rsi, exportDescriptor
    mov     ecx, [rsi].IMAGE_EXPORT_DIRECTORY.AddressOfNameOrdinals
    mov     rdx, exportRawOffset
    add     rcx, rdx
    mov     rsi, exportSection
    mov     edx, [rsi].IMAGE_SECTION_HEADER.VirtualAddress
    sub     rcx, rdx
    mov     exportOrdinalsPtr, rcx

    mov     rsi, exportDescriptor
    mov     ecx, [rsi].IMAGE_EXPORT_DIRECTORY.AddressOfFunctions
    mov     rdx, exportRawOffset
    add     rcx, rdx
    mov     rsi, exportSection
    mov     edx, [rsi].IMAGE_SECTION_HEADER.VirtualAddress
    sub     rcx, rdx
    mov     exportFuncsPtr, rcx

    xor     rax, rax
    mov     dem, rax

export_loop:
    mov     rax, dem
    cmp     rax, exportCount
    jae     skip_export_parse

    lea     rdx, linebreak
    mov     rcx, hOut
    mov     r8,  2
    lea     r9, lpNumberOfCharsWritten
    mov     qword ptr [rsp+20h], 0
    call    qword ptr [WriteConsoleA]

    mov     rax, dem
    mov     rsi, exportNamesPtr
    mov     ecx, [rsi + rax*4]
    mov     rdx, exportRawOffset
    add     rcx, rdx
    mov     rsi, exportSection
    mov     edx, [rsi].IMAGE_SECTION_HEADER.VirtualAddress
    sub     rcx, rdx
    mov     exportNamePtr, rcx

    mov     rbx, rcx
    call    qword ptr [lstrlenA]
    mov     r8, rax
    mov     rdx, rbx
    mov     rcx, hOut
    lea     r9, lpNumberOfCharsWritten
    mov     qword ptr [rsp+20h], 0
    call    qword ptr [WriteConsoleA]

    lea     rdx, linebreak
    mov     rcx, hOut
    mov     r8,  2
    lea     r9, lpNumberOfCharsWritten
    mov     qword ptr [rsp+20h], 0
    call    qword ptr [WriteConsoleA]

    mov     rax, dem
    mov     rsi, exportOrdinalsPtr
    movzx   ebx, word ptr [rsi + rax*2]

    mov     ecx, ebx
    add     rcx, exportBasee
    mov     rdx, TYPE IMAGE_EXPORT_DIRECTORY.Base2
    lea     r8, szOrdinal
    call    print

    mov     rsi, exportFuncsPtr
    mov     ecx, [rsi + rbx*4]
    mov     rdx, TYPE IMAGE_EXPORT_DIRECTORY.AddressOfFunctions
    lea     r8, szExportRVA
    call    print

    mov     rax, dem
    inc     rax
    mov     dem, rax
    jmp     export_loop

skip_export_parse:
    mov     rax, importDirectoryRVA
    cmp     rax, 0
    je      exitt

    mov     rsi, importSection
    mov     ecx, [rsi].IMAGE_SECTION_HEADER.PointerToRawData
    mov     rsi, lpBuffer
    add     rsi, rcx
    mov     rawOffset, rsi

    mov     rsi, lpBuffer
    add     rsi, peoffset

    mov     rax, isPE32
    cmp     rax, 1
    je      get_import_rva_32

    mov     ecx, [rsi].IMAGE_NT_HEADER.OptionalHeader.DataDirectory[1 * SIZEOF IMAGE_DATA_DIRECTORY].VirtualAddress
    jmp     got_import_rva

get_import_rva_32:
    mov     ecx, [rsi].IMAGE_NT_HEADER32.OptionalHeader.DataDirectory[1 * SIZEOF IMAGE_DATA_DIRECTORY].VirtualAddress

got_import_rva:
    add     rcx, rawOffset
    mov     rsi, importSection
    mov     edx, [rsi].IMAGE_SECTION_HEADER.VirtualAddress
    sub     rcx, rdx
    mov     importDescriptor, rcx

    lea     rcx, szDllImportTitle
    mov     rbx, rcx
    call    qword ptr [lstrlenA]
    mov     r8, rax
    mov     rdx, rbx
    mov     rcx, hOut
    lea     r9, lpNumberOfCharsWritten
    mov     qword ptr [rsp+20h], 0
    call    qword ptr [WriteConsoleA]

    xor     rax, rax

dll_loop:
    lea     rdx, linebreak
    mov     rcx, hOut
    mov     r8,  2
    lea     r9, lpNumberOfCharsWritten
    mov     qword ptr [rsp+20h], 0
    call    qword ptr [WriteConsoleA]

    mov     rdx, rawOffset
    mov     rsi, importDescriptor
    mov     ecx, [rsi].IMAGE_IMPORT_DESCRIPTOR.Namee
    add     rcx, rdx
    mov     rsi, importSection
    mov     edx, [rsi].IMAGE_SECTION_HEADER.VirtualAddress
    sub     rcx, rdx
    mov     rbx, rcx
    call    qword ptr [lstrlenA]
    mov     r8, rax
    mov     rdx, rbx
    mov     rcx, hOut
    lea     r9, lpNumberOfCharsWritten
    mov     qword ptr [rsp+20h], 0
    call    qword ptr [WriteConsoleA]

    mov     rsi, importDescriptor
    mov     ecx, [rsi].IMAGE_IMPORT_DESCRIPTOR.OriginalFirstThunk
    cmp     rcx, 0
    jne     ok_import
    mov     rsi, importDescriptor
    mov     ecx, [rsi].IMAGE_IMPORT_DESCRIPTOR.FirstThunk

ok_import:
    mov     thunk, rcx
    mov     rdx, rawOffset
    mov     rcx, thunk
    add     rcx, rdx
    mov     rsi, importSection
    mov     edx, [rsi].IMAGE_SECTION_HEADER.VirtualAddress
    sub     rcx, rdx
    mov     thunkData, rcx

    lea     rdx, linebreak
    mov     rcx, hOut
    mov     r8,  2
    lea     r9, lpNumberOfCharsWritten
    mov     qword ptr [rsp+20h], 0
    call    qword ptr [WriteConsoleA]

    lea     rdx, linebreak
    mov     rcx, hOut
    mov     r8,  2
    lea     r9, lpNumberOfCharsWritten
    mov     qword ptr [rsp+20h], 0
    call    qword ptr [WriteConsoleA]

    mov     rax, isPE32
    cmp     rax, 1
    je      import_loop_32

import_loop:
    mov     rsi, thunkData
    mov     rcx, [rsi].IMAGE_THUNK_DATA64.AddressOfData
    cmp     rcx, 80000000h
    jg      elsee

    mov     rdx, TYPE IMAGE_THUNK_DATA64.AddressOfData
    lea     r8, szOrdinal
    call    print
    jmp     endok

elsee:
    mov     rdx, rawOffset
    add     rcx, rdx
    mov     rsi, importSection
    mov     edx, [rsi].IMAGE_SECTION_HEADER.VirtualAddress
    sub     rcx, rdx
    add     rcx, 2
    mov     rbx, rcx
    call    qword ptr [lstrlenA]
    mov     r8, rax
    mov     rdx, rbx
    mov     rcx, hOut
    lea     r9, lpNumberOfCharsWritten
    mov     qword ptr [rsp+20h], 0
    call    qword ptr [WriteConsoleA]

    lea     rdx, linebreak
    mov     rcx, hOut
    mov     r8,  2
    lea     r9, lpNumberOfCharsWritten
    mov     qword ptr [rsp+20h], 0
    call    qword ptr [WriteConsoleA]

endok:
    add     thunkData, SIZEOF IMAGE_THUNK_DATA64
    mov     rsi, thunkData
    mov     rcx, [rsi].IMAGE_THUNK_DATA64.AddressOfData
    cmp     rcx, 0
    jne     import_loop
    jmp     next_dll

import_loop_32:
    mov     rsi, thunkData
    mov     ecx, [rsi].IMAGE_THUNK_DATA32.AddressOfData
    test    ecx, 80000000h
    jnz     elsee_32

    mov     rdx, rawOffset
    add     rcx, rdx
    mov     rsi, importSection
    mov     edx, [rsi].IMAGE_SECTION_HEADER.VirtualAddress
    sub     rcx, rdx
    add     rcx, 2
    mov     rbx, rcx
    call    qword ptr [lstrlenA]
    mov     r8, rax
    mov     rdx, rbx
    mov     rcx, hOut
    lea     r9, lpNumberOfCharsWritten
    mov     qword ptr [rsp+20h], 0
    call    qword ptr [WriteConsoleA]

    lea     rdx, linebreak
    mov     rcx, hOut
    mov     r8,  2
    lea     r9, lpNumberOfCharsWritten
    mov     qword ptr [rsp+20h], 0
    call    qword ptr [WriteConsoleA]
    jmp     endok_32

elsee_32:
    and     ecx, 0FFFFh
    mov     rdx, TYPE IMAGE_THUNK_DATA32.AddressOfData
    lea     r8, szOrdinal
    call    print

endok_32:
    add     thunkData, SIZEOF IMAGE_THUNK_DATA32
    mov     rsi, thunkData
    mov     ecx, [rsi].IMAGE_THUNK_DATA32.AddressOfData
    cmp     ecx, 0
    jne     import_loop_32

next_dll:
    add     importDescriptor, SIZEOF IMAGE_IMPORT_DESCRIPTOR
    mov     rsi, importDescriptor
    mov     ecx, [rsi].IMAGE_IMPORT_DESCRIPTOR.Namee
    cmp     rcx, 0
    jne     dll_loop

exitt:
    xor     rax, rax
    add     rsp, 60h
    mov     rsp, rbp
    pop     rbp
    ret

mainCRTStartup ENDP
END