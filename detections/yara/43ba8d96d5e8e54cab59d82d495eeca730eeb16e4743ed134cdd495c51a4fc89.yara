
rule PUA_VULN_Driver_MICSYSTechnologyCoLTd_MsIosys_MsIoDriverVersion_x_8xBJ {
	meta:
		description = "Detects vulnerable driver mentioned in LOLDrivers project using VersionInfo values from the PE header - dc943bf367ae77016ae399df8e71d38a.bin"
		author = "Florian Roth"
		reference = "https://github.com/magicsword-io/LOLDrivers"
		hash = "43ba8d96d5e8e54cab59d82d495eeca730eeb16e4743ed134cdd495c51a4fc89"
		date = "2023-05-23"
		score = 50
	strings:
		$ = { 00460069006c0065004400650073006300720069007000740069006f006e[1-8]004d004900430053005900530020006400720069007600650072 } /* FileDescription MICSYS driver */
		$ = { 0043006f006d00700061006e0079004e0061006d0065[1-8]004d0049004300530059005300200054006500630068006e006f006c006f0067007900200043006f002e002c0020004c00540064 } /* CompanyName MICSYS Technology Co., LTd */
		$ = { 00460069006c006500560065007200730069006f006e[1-8]0031002e003100200078003600340020006200750069006c0074002000620079003a002000570069006e00440044004b } /* FileVersion 1.1 x64 built by: WinDDK */
		$ = { 00500072006f006400750063007400560065007200730069006f006e[1-8]0031002e00310020007800360034 } /* ProductVersion 1.1 x64 */
		$ = { 0049006e007400650072006e0061006c004e0061006d0065[1-8]004d00730049006f00360034002e007300790073 } /* InternalName MsIo64.sys */
		$ = { 00500072006f0064007500630074004e0061006d0065[1-8]004d00730049006f003600340020004400720069007600650072002000560065007200730069006f006e00200031002e0031 } /* ProductName MsIo64 Driver Version 1.1 */
		$ = { 004f0072006900670069006e0061006c00460069006c0065006e0061006d0065[1-8]004d00730049006f00360034002e007300790073 } /* OriginalFilename MsIo64.sys */
		$ = { 004c006500670061006c0043006f0070007900720069006700680074[1-8]0043006f00700079007200690067006800740020002800630029002000320030003100390020004d00490043005300590053 } /* LegalCopyright Copyright (c) 2019 MICSYS */
	condition:
		all of them
}
