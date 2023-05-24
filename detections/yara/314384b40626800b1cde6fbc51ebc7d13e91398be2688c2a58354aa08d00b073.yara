
rule PUA_VULN_Driver_TOSHIBACorporation_NCHGBIOSxSYS_TOSHIBABIOSPackage_478B {
	meta:
		description = "Detects vulnerable driver mentioned in LOLDrivers project using VersionInfo values from the PE header - d9ce18960c23f38706ae9c6584d9ac90.bin"
		author = "Florian Roth"
		reference = "https://github.com/magicsword-io/LOLDrivers"
		hash = "314384b40626800b1cde6fbc51ebc7d13e91398be2688c2a58354aa08d00b073"
		date = "2023-05-23"
		score = 50
	strings:
		$ = { 00460069006c0065004400650073006300720069007000740069006f006e[1-8]00420049004f00530020005500700064006100740065002000440072006900760065007200200046006f0072002000570069006e0064006f007700730020007800360034002000450064006900740069006f006e } /* FileDescription BIOS Update Driver For Windows x64 Edition */
		$ = { 0043006f006d00700061006e0079004e0061006d0065[1-8]0054004f0053004800490042004100200043006f00720070006f0072006100740069006f006e } /* CompanyName TOSHIBA Corporation */
		$ = { 00460069006c006500560065007200730069006f006e[1-8]0034002e0032002e0034002e00300020006200750069006c0074002000620079003a002000570069006e00440044004b } /* FileVersion 4.2.4.0 built by: WinDDK */
		$ = { 00500072006f006400750063007400560065007200730069006f006e[1-8]0034002e0032002e0034002e0030 } /* ProductVersion 4.2.4.0 */
		$ = { 0049006e007400650072006e0061006c004e0061006d0065[1-8]004e00430048004700420049004f00530032007800360034002e005300590053 } /* InternalName NCHGBIOS2x64.SYS */
		$ = { 00500072006f0064007500630074004e0061006d0065[1-8]0054004f00530048004900420041002000420049004f00530020005000610063006b006100670065 } /* ProductName TOSHIBA BIOS Package */
		$ = { 004f0072006900670069006e0061006c00460069006c0065006e0061006d0065[1-8]004e00430048004700420049004f00530032007800360034002e005300590053 } /* OriginalFilename NCHGBIOS2x64.SYS */
		$ = { 004c006500670061006c0043006f0070007900720069006700680074[1-8]0043006f0070007900720069006700680074002000280043002900200031003900390039002d003200300031003200200054004f0053004800490042004100200043006f00720070006f0072006100740069006f006e002e00200041006c006c0020005200690067006800740073002000520065007300650072007600650064002e } /* LegalCopyright Copyright (C) 1999-2012 TOSHIBA Corporation. All Rights Reserved. */
	condition:
		all of them
}
