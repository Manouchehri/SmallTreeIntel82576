

        ; ================ B E G I N N I N G   O F   P R O C E D U R E ================

        ; Variables:
        ;    var_2A: -42
        ;    var_2C: -44
        ;    var_38: -56
        ;    var_40: -64
        ;    var_48: -72


                     __ZN19SmallTreeIntel825765probeEP9IOServicePi:        // SmallTreeIntel82576::probe(IOService*, int*)
0000000000001560         push       rbp
0000000000001561         mov        rbp, rsp
0000000000001564         push       r15
0000000000001566         push       r14
0000000000001568         push       r13
000000000000156a         push       r12
000000000000156c         push       rbx
000000000000156d         sub        rsp, 0x28
0000000000001571         mov        r14, rdx
0000000000001574         mov        r15, rsi
0000000000001577         mov        rbx, rdi
000000000000157a         test       byte [rbx+0x784], 0x2                       ; DATA XREF=__Z18e1000_set_mac_typeP8e1000_hw+68, __Z22e1000_setup_init_funcsP8e1000_hwb+77
0000000000001581         je         loc_159f

0000000000001583         lea        rsi, qword [rbx+0x38b]
000000000000158a         lea        rdi, qword [0x14ef9]                        ; "%s %s: Entered\\n", argument "format" for method _IOLog
0000000000001591         lea        rdx, qword [0x14f4b]                        ; "probe"
0000000000001598         xor        eax, eax
000000000000159a         call       _IOLog

                     loc_159f:
000000000000159f         mov        rax, qword [0x18020]                        ; CODE XREF=__ZN19SmallTreeIntel825765probeEP9IOServicePi+33
00000000000015a6         mov        rsi, qword [rax]
00000000000015a9         mov        rdi, r15
00000000000015ac         call       __ZN15OSMetaClassBase12safeMetaCastEPKS_PK11OSMetaClass ; OSMetaClassBase::safeMetaCast(OSMetaClassBase const*, OSMetaClass const*)
00000000000015b1         mov        qword [rbx+0x748], rax
00000000000015b8         test       rax, rax
00000000000015bb         je         loc_195b

00000000000015c1         mov        rcx, qword [rax]
00000000000015c4         mov        rdi, rax
00000000000015c7         call       qword [rcx+0x20]
00000000000015ca         mov        rdi, qword [rbx+0x748]
00000000000015d1         mov        rax, qword [rdi]
00000000000015d4         xor        edx, edx
00000000000015d6         xor        ecx, ecx
00000000000015d8         mov        rsi, rbx
00000000000015db         call       qword [rax+0x5d0]
00000000000015e1         test       al, al
00000000000015e3         je         loc_197b

00000000000015e9         mov        rdi, qword [rbx+0x748]
00000000000015f0         mov        rax, qword [rdi]
00000000000015f3         mov        esi, 0x10
00000000000015f8         xor        edx, edx
00000000000015fa         call       qword [rax+0x908]
0000000000001600         mov        qword [rbx+0x750], rax
0000000000001607         test       rax, rax
000000000000160a         je         loc_19af

0000000000001610         mov        qword [rbp+var_38], r14
0000000000001614         mov        rdi, qword [rbx+0x748]
000000000000161b         mov        esi, 0x4
0000000000001620         call       __ZN11IOPCIDevice20extendedConfigRead16Ey   ; IOPCIDevice::extendedConfigRead16(unsigned long long)
0000000000001625         or         eax, 0x16
0000000000001628         mov        rdi, qword [rbx+0x748]
000000000000162f         and        eax, 0xfffe
0000000000001634         mov        esi, 0x4
0000000000001639         mov        edx, eax
000000000000163b         call       __ZN11IOPCIDevice21extendedConfigWrite16Eyt ; IOPCIDevice::extendedConfigWrite16(unsigned long long, unsigned short)
0000000000001640         mov        rdi, qword [rbx+0x748]
0000000000001647         mov        esi, 0x4
000000000000164c         call       __ZN11IOPCIDevice20extendedConfigRead16Ey   ; IOPCIDevice::extendedConfigRead16(unsigned long long)
0000000000001651         mov        rdi, qword [rbx+0x748]
0000000000001658         mov        esi, 0x2
000000000000165d         call       __ZN11IOPCIDevice20extendedConfigRead16Ey   ; IOPCIDevice::extendedConfigRead16(unsigned long long)
0000000000001662         mov        word [rbx+0xd70], ax
0000000000001669         mov        rdi, qword [rbx+0x748]
0000000000001670         xor        esi, esi
0000000000001672         call       __ZN11IOPCIDevice20extendedConfigRead16Ey   ; IOPCIDevice::extendedConfigRead16(unsigned long long)
0000000000001677         mov        word [rbx+0xd76], ax
000000000000167e         mov        rdi, qword [rbx+0x748]
0000000000001685         mov        esi, 0x2c
000000000000168a         call       __ZN11IOPCIDevice20extendedConfigRead16Ey   ; IOPCIDevice::extendedConfigRead16(unsigned long long)
000000000000168f         mov        word [rbx+0xd72], ax
0000000000001696         mov        rdi, qword [rbx+0x748]
000000000000169d         mov        esi, 0x2e
00000000000016a2         call       __ZN11IOPCIDevice20extendedConfigRead16Ey   ; IOPCIDevice::extendedConfigRead16(unsigned long long)
00000000000016a7         mov        word [rbx+0xd74], ax
00000000000016ae         mov        rdi, qword [rbx+0x748]
00000000000016b5         mov        esi, 0x8
00000000000016ba         call       __ZN11IOPCIDevice19extendedConfigRead8Ey    ; IOPCIDevice::extendedConfigRead8(unsigned long long)
00000000000016bf         mov        byte [rbx+0xd78], al
00000000000016c5         mov        rdi, qword [rbx+0x748]
00000000000016cc         mov        esi, 0xc
00000000000016d1         call       __ZN11IOPCIDevice19extendedConfigRead8Ey    ; IOPCIDevice::extendedConfigRead8(unsigned long long)
00000000000016d6         mov        byte [rbx+0x768], al
00000000000016dc         mov        rdi, qword [rbx+0x748]
00000000000016e3         mov        esi, 0xd
00000000000016e8         call       __ZN11IOPCIDevice19extendedConfigRead8Ey    ; IOPCIDevice::extendedConfigRead8(unsigned long long)
00000000000016ed         mov        byte [rbx+0x769], al
00000000000016f3         mov        rdi, qword [rbx+0x748]
00000000000016fa         mov        rax, qword [rdi]
00000000000016fd         call       qword [rax+0x8e8]
0000000000001703         mov        byte [rbx+0x76a], al
0000000000001709         mov        rdi, qword [rbx+0x748]
0000000000001710         mov        rax, qword [rdi]
0000000000001713         call       qword [rax+0x8f0]
0000000000001719         mov        byte [rbx+0x76b], al
000000000000171f         mov        rdi, qword [rbx+0x748]
0000000000001726         mov        rax, qword [rdi]
0000000000001729         call       qword [rax+0x8f8]
000000000000172f         mov        byte [rbx+0x76c], al
0000000000001735         mov        rdi, qword [rbx+0x750]
000000000000173c         mov        rax, qword [rdi]
000000000000173f         call       qword [rax+0x118]
0000000000001745         mov        qword [rbx+0x7f0], rax
000000000000174c         mov        qword [rbx+0x7e8], rbx
0000000000001753         mov        dword [rax+0xe0], 0x0
000000000000175d         mov        rax, qword [rbx+0x7f0]
0000000000001764         mov        dword [rax+0xd8], 0xffffffff
000000000000176e         mov        rax, qword [rbx+0x7f0]
0000000000001775         mov        eax, dword [rax+8]
0000000000001778         mov        dword [rbx+0x7e0], eax
000000000000177e         lea        r14, qword [rbx+0x38b]
0000000000001785         mov        rdi, qword [rbx+0x748]
000000000000178c         mov        rax, qword [rdi]
000000000000178f         call       qword [rax+0x8e8]
0000000000001795         movzx      r13d, al
0000000000001799         mov        rdi, qword [rbx+0x748]
00000000000017a0         mov        rax, qword [rdi]
00000000000017a3         call       qword [rax+0x8f0]
00000000000017a9         movzx      r12d, al
00000000000017ad         mov        rdi, qword [rbx+0x748]
00000000000017b4         mov        rax, qword [rdi]
00000000000017b7         call       qword [rax+0x8f8]
00000000000017bd         movzx      r9d, al
00000000000017c1         lea        rdx, qword [0x14fb8]                        ; "b%dd%df%d", argument "format" for method _snprintf
00000000000017c8         mov        esi, 0x1e                                   ; argument "size" for method _snprintf
00000000000017cd         xor        eax, eax
00000000000017cf         mov        ecx, r13d
00000000000017d2         mov        r8d, r12d
00000000000017d5         mov        r12, r14
00000000000017d8         mov        rdi, r12                                    ; argument "str" for method _snprintf
00000000000017db         call       _snprintf
00000000000017e0         movzx      ecx, word [rbx+0xd74]
00000000000017e7         cmp        ecx, 0xa
00000000000017ea         movzx      edx, word [rbx+0xd76]
00000000000017f1         jne        loc_19c5

00000000000017f7         cmp        edx, 0x8086
00000000000017fd         jne        loc_19c5

0000000000001803         movzx      ecx, word [rbx+0xd70]
000000000000180a         add        ecx, 0xffffeadf
0000000000001810         movzx      eax, cx
0000000000001813         movzx      ecx, cx
0000000000001816         cmp        ecx, 0x12
0000000000001819         mov        r14, qword [rbp+var_38]
000000000000181d         ja         loc_1a6e

0000000000001823         mov        ecx, 0x40003
0000000000001828         bt         rcx, rax
000000000000182c         jae        loc_1a6e

0000000000001832         lea        r13, qword [rbx+0x7e8]
0000000000001839         mov        esi, 0x1
000000000000183e         mov        rdi, r13
0000000000001841         call       __Z22e1000_setup_init_funcsP8e1000_hwb      ; e1000_setup_init_funcs(e1000_hw*, bool)
0000000000001846         mov        ecx, eax
0000000000001848         test       ecx, ecx
000000000000184a         je         loc_186d

000000000000184c         test       byte [rbx+0x784], 0x2
0000000000001853         je         loc_186d

0000000000001855         lea        rdi, qword [0x1500e]                        ; "%s %s: e1000_setup_init_funcs returned %d\\n", argument "format" for method _IOLog
000000000000185c         lea        rdx, qword [0x14f4b]                        ; "probe"
0000000000001863         xor        eax, eax
0000000000001865         mov        rsi, r12
0000000000001868         call       _IOLog

                     loc_186d:
000000000000186d         mov        rdi, r13                                    ; CODE XREF=__ZN19SmallTreeIntel825765probeEP9IOServicePi+746, __ZN19SmallTreeIntel825765probeEP9IOServicePi+755
0000000000001870         call       __Z18e1000_get_bus_infoP8e1000_hw           ; e1000_get_bus_info(e1000_hw*)
0000000000001875         mov        ecx, eax
0000000000001877         test       ecx, ecx
0000000000001879         je         loc_189c

000000000000187b         test       byte [rbx+0x784], 0x2
0000000000001882         je         loc_189c

0000000000001884         lea        rdi, qword [0x15039]                        ; "%s %s: e1000_get_bus_info returned %d\\n", argument "format" for method _IOLog
000000000000188b         lea        rdx, qword [0x14f4b]                        ; "probe"
0000000000001892         xor        eax, eax
0000000000001894         mov        rsi, r12
0000000000001897         call       _IOLog

                     loc_189c:
000000000000189c         mov        rdi, r13                                    ; CODE XREF=__ZN19SmallTreeIntel825765probeEP9IOServicePi+793, __ZN19SmallTreeIntel825765probeEP9IOServicePi+802
000000000000189f         mov        qword [rbp+var_40], r13
00000000000018a3         call       __Z21e1000_read_pba_lengthP8e1000_hwPj+10
00000000000018a8         test       eax, eax
00000000000018aa         je         loc_18cd

00000000000018ac         test       byte [rbx+0x784], 0x1
00000000000018b3         je         loc_18cd

00000000000018b5         lea        rdi, qword [0x15060]                        ; "%s %s: NVM Checksum incorrect", argument "format" for method _IOLog
00000000000018bc         lea        rdx, qword [0x14f4b]                        ; "probe"
00000000000018c3         xor        eax, eax
00000000000018c5         mov        rsi, r12
00000000000018c8         call       _IOLog

                     loc_18cd:
00000000000018cd         lea        r13, qword [rbx+0x385]                      ; CODE XREF=__ZN19SmallTreeIntel825765probeEP9IOServicePi+842, __ZN19SmallTreeIntel825765probeEP9IOServicePi+851
00000000000018d4         mov        esi, 0x6                                    ; argument "n" for method _bzero
00000000000018d9         mov        rdi, r13                                    ; argument "s" for method _bzero
00000000000018dc         call       _bzero
00000000000018e1         mov        rdi, qword [rbp+var_40]
00000000000018e5         call       __Z19e1000_read_mac_addrP8e1000_hw          ; e1000_read_mac_addr(e1000_hw*)
00000000000018ea         mov        ecx, eax
00000000000018ec         test       ecx, ecx
00000000000018ee         je         loc_1911

00000000000018f0         test       byte [rbx+0x784], 0x2
00000000000018f7         je         loc_1911

00000000000018f9         lea        rdi, qword [0x1507e]                        ; "%s %s: e1000_read_mac_addr returned %d\\n", argument "format" for method _IOLog
0000000000001900         lea        rdx, qword [0x14f4b]                        ; "probe"
0000000000001907         xor        eax, eax
0000000000001909         mov        rsi, r12
000000000000190c         call       _IOLog

                     loc_1911:
0000000000001911         lea        rdi, qword [rbx+0x8f8]                      ; argument "s1" for method _bcopy, CODE XREF=__ZN19SmallTreeIntel825765probeEP9IOServicePi+910, __ZN19SmallTreeIntel825765probeEP9IOServicePi+919
0000000000001918         mov        edx, 0x6                                    ; argument "n" for method _bcopy
000000000000191d         mov        rsi, r13                                    ; argument "s2" for method _bcopy
0000000000001920         call       _bcopy
0000000000001925         movzx      ecx, byte [rbx+0x76c]
000000000000192c         cmp        ecx, 0x4
000000000000192f         jae        loc_19e2

0000000000001935         mov        qword [rbp+var_48], r12
0000000000001939         shl        ecx, 0x4
000000000000193c         movabs     rax, 0x12e00ee00ae004e
0000000000001946         shr        rax, cl
0000000000001949         movabs     r12, 0x12f00ef00af004f
0000000000001953         shr        r12, cl
0000000000001956         jmp        loc_19f9

                     loc_195b:
000000000000195b         xor        r15d, r15d                                  ; CODE XREF=__ZN19SmallTreeIntel825765probeEP9IOServicePi+91
000000000000195e         test       byte [rbx+0x784], 0x1
0000000000001965         je         loc_1aaf

000000000000196b         lea        rsi, qword [rbx+0x38b]
0000000000001972         lea        rdi, qword [0x14f51]                        ; "%s %s: Could not get PCI Nub\\n"
0000000000001979         jmp        loc_1999

                     loc_197b:
000000000000197b         xor        r15d, r15d                                  ; CODE XREF=__ZN19SmallTreeIntel825765probeEP9IOServicePi+131
000000000000197e         test       byte [rbx+0x784], 0x1
0000000000001985         je         loc_1aaf

000000000000198b         lea        rsi, qword [rbx+0x38b]
0000000000001992         lea        rdi, qword [0x14f6f]                        ; "%s %s: Could not open PCI Nub\\n"

                     loc_1999:
0000000000001999         lea        rdx, qword [0x14f4b]                        ; "probe", CODE XREF=__ZN19SmallTreeIntel825765probeEP9IOServicePi+1049
00000000000019a0         xor        r15d, r15d
00000000000019a3         xor        eax, eax
00000000000019a5         call       _IOLog
00000000000019aa         jmp        loc_1aaf

                     loc_19af:
00000000000019af         lea        rdi, qword [0x14f8e]                        ; "probe mapDeviceMemoryWithRegister failed\\n", argument "format" for method _IOLog, CODE XREF=__ZN19SmallTreeIntel825765probeEP9IOServicePi+170
00000000000019b6         xor        r15d, r15d
00000000000019b9         xor        eax, eax
00000000000019bb         call       _IOLog
00000000000019c0         jmp        loc_1aaf

                     loc_19c5:
00000000000019c5         lea        rdi, qword [0x14fc2]                        ; "SmallTreeIntel82576 %s : Unsupported Card Vendor=0x%04x SubsystemID=0x%04x\\n", argument "format" for method _IOLog, CODE XREF=__ZN19SmallTreeIntel825765probeEP9IOServicePi+657, __ZN19SmallTreeIntel825765probeEP9IOServicePi+669
00000000000019cc         xor        r15d, r15d
00000000000019cf         xor        eax, eax
00000000000019d1         mov        rsi, r12
00000000000019d4         call       _IOLog
00000000000019d9         mov        r14, qword [rbp+var_38]
00000000000019dd         jmp        loc_1aaf

                     loc_19e2:
00000000000019e2         lea        rdi, qword [0x150a6]                        ; "SmallTreeIntel82576 %s : Unsupported function=%d\\n", argument "format" for method _IOLog, CODE XREF=__ZN19SmallTreeIntel825765probeEP9IOServicePi+975
00000000000019e9         xor        eax, eax
00000000000019eb         mov        rsi, r12
00000000000019ee         mov        qword [rbp+var_48], r12
00000000000019f2         mov        edx, ecx
00000000000019f4         call       _IOLog

                     loc_19f9:
00000000000019f9         movzx      esi, ax                                     ; CODE XREF=__ZN19SmallTreeIntel825765probeEP9IOServicePi+1014
00000000000019fc         lea        rcx, qword [rbp+var_2A]
0000000000001a00         mov        edx, 0x1
0000000000001a05         mov        r13, qword [rbp+var_40]
0000000000001a09         mov        rdi, r13
0000000000001a0c         call       __Z14e1000_read_nvmP8e1000_hwttPt           ; e1000_read_nvm(e1000_hw*, unsigned short, unsigned short, unsigned short*)
0000000000001a11         movzx      esi, r12w
0000000000001a15         lea        rcx, qword [rbp+var_2C]
0000000000001a19         mov        edx, 0x1
0000000000001a1e         mov        rdi, r13
0000000000001a21         call       __Z14e1000_read_nvmP8e1000_hwttPt           ; e1000_read_nvm(e1000_hw*, unsigned short, unsigned short, unsigned short*)
0000000000001a26         mov        ax, word [rbp+var_2A]
0000000000001a2a         movzx      r8d, ax
0000000000001a2e         xor        ecx, ecx

                     loc_1a30:
0000000000001a30         movzx      edx, byte [rbx+rcx*2+0x385]                 ; CODE XREF=__ZN19SmallTreeIntel825765probeEP9IOServicePi+1275
0000000000001a38         shl        edx, 0x8
0000000000001a3b         movzx      esi, byte [rbx+rcx*2+0x386]
0000000000001a43         or         esi, edx
0000000000001a45         movzx      edx, ax
0000000000001a48         mov        eax, esi
0000000000001a4a         neg        eax
0000000000001a4c         test       dl, 0x1
0000000000001a4f         cmove      eax, esi
0000000000001a52         add        eax, edx
0000000000001a54         inc        rcx
0000000000001a57         cmp        rcx, 0x3
0000000000001a5b         jne        loc_1a30

0000000000001a5d         movzx      r9d, word [rbp+var_2C]
0000000000001a62         movzx      eax, ax
0000000000001a65         cmp        r9d, eax
0000000000001a68         mov        rsi, qword [rbp+var_48]
0000000000001a6c         jne        loc_1a90

                     loc_1a6e:
0000000000001a6e         mov        rax, qword [0x18058]                        ; CODE XREF=__ZN19SmallTreeIntel825765probeEP9IOServicePi+701, __ZN19SmallTreeIntel825765probeEP9IOServicePi+716
0000000000001a75         mov        rdi, rbx
0000000000001a78         mov        rsi, r15
0000000000001a7b         mov        rdx, r14
0000000000001a7e         call       qword [rax+0x5c8]
0000000000001a84         mov        r15, rax
0000000000001a87         add        dword [r14], 0x2000
0000000000001a8e         jmp        loc_1aaf

                     loc_1a90:
0000000000001a90         movzx      edx, word [rbx+0xd74]                       ; CODE XREF=__ZN19SmallTreeIntel825765probeEP9IOServicePi+1292
0000000000001a97         movzx      ecx, word [rbx+0xd70]
0000000000001a9e         lea        rdi, qword [0x150d8]                        ; "SmallTreeIntel82576 %s: Invalid EEPROM 0x%04x 0x%04x 0x%04x 0x%04x\\n", argument "format" for method _IOLog
0000000000001aa5         xor        r15d, r15d
0000000000001aa8         xor        eax, eax
0000000000001aaa         call       _IOLog

                     loc_1aaf:
0000000000001aaf         mov        rdi, qword [rbx+0x748]                      ; CODE XREF=__ZN19SmallTreeIntel825765probeEP9IOServicePi+1029, __ZN19SmallTreeIntel825765probeEP9IOServicePi+1061, __ZN19SmallTreeIntel825765probeEP9IOServicePi+1098, __ZN19SmallTreeIntel825765probeEP9IOServicePi+1120, __ZN19SmallTreeIntel825765probeEP9IOServicePi+1149, __ZN19SmallTreeIntel825765probeEP9IOServicePi+1326
0000000000001ab6         test       rdi, rdi
0000000000001ab9         je         loc_1ac9

0000000000001abb         mov        rax, qword [rdi]
0000000000001abe         xor        edx, edx
0000000000001ac0         mov        rsi, rbx
0000000000001ac3         call       qword [rax+0x5d8]

                     loc_1ac9:
0000000000001ac9         test       byte [rbx+0x784], 0x2                       ; CODE XREF=__ZN19SmallTreeIntel825765probeEP9IOServicePi+1369
0000000000001ad0         je         loc_1af7

0000000000001ad2         add        rbx, 0x38b
0000000000001ad9         movsxd     rcx, dword [r14]
0000000000001adc         lea        rdi, qword [0x1511c]                        ; "%s %s: Returning with score=%ld match=%p\\n", argument "format" for method _IOLog
0000000000001ae3         lea        rdx, qword [0x14f4b]                        ; "probe"
0000000000001aea         xor        eax, eax
0000000000001aec         mov        rsi, rbx
0000000000001aef         mov        r8, r15
0000000000001af2         call       _IOLog

                     loc_1af7:
0000000000001af7         mov        rax, r15                                    ; CODE XREF=__ZN19SmallTreeIntel825765probeEP9IOServicePi+1392
0000000000001afa         add        rsp, 0x28
0000000000001afe         pop        rbx
0000000000001aff         pop        r12
0000000000001b01         pop        r13
0000000000001b03         pop        r14
0000000000001b05         pop        r15
0000000000001b07         pop        rbp
0000000000001b08         ret
                        ; endp
