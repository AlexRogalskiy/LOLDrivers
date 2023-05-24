
rule PUA_VULN_Driver_CreativeTechnologyInnovationCoLTd_CtiIosys_CtiIoDriverVersion_x_7X6s {
	meta:
		description = "Detects vulnerable driver mentioned in LOLDrivers project using VersionInfo values from the PE header - 3F8CDAF7413000D34D6A1A1D5341A11B.bin"
		author = "Florian Roth"
		reference = "https://github.com/magicsword-io/LOLDrivers"
		hash = "2121a2bb8ebbf2e6e82c782b6f3c6b7904f686aa495def25cf1cf52a42e16109"
		date = "2023-05-23"
		score = 50
	strings:
		$ = { 00460069006c0065004400650073006300720069007000740069006f006e[1-8]00430054004900200049004f0020006400720069007600650072 } /* FileDescription CTI IO driver */
		$ = { 0043006f006d00700061006e0079004e0061006d0065[1-8]0043007200650061007400690076006500200054006500630068006e006f006c006f0067007900200049006e006e006f0076006100740069006f006e00200043006f002e002c0020004c00540064002e } /* CompanyName Creative Technology Innovation Co., LTd. */
		$ = { 00460069006c006500560065007200730069006f006e[1-8]0031002e003000200078003600340020006200750069006c0074002000620079003a002000570069006e00440044004b } /* FileVersion 1.0 x64 built by: WinDDK */
		$ = { 00500072006f006400750063007400560065007200730069006f006e[1-8]0031002e00300020007800360034 } /* ProductVersion 1.0 x64 */
		$ = { 0049006e007400650072006e0061006c004e0061006d0065[1-8]0043007400690049006f00360034002e007300790073 } /* InternalName CtiIo64.sys */
		$ = { 00500072006f0064007500630074004e0061006d0065[1-8]0043007400690049006f003600340020004400720069007600650072002000560065007200730069006f006e00200031002e0030 } /* ProductName CtiIo64 Driver Version 1.0 */
		$ = { 004f0072006900670069006e0061006c00460069006c0065006e0061006d0065[1-8]0043007400690049006f00360034002e007300790073 } /* OriginalFilename CtiIo64.sys */
		$ = { 004c006500670061006c0043006f0070007900720069006700680074[1-8]0043006f00700079007200690067006800740020002800630029002000320030003200310020004300540049 } /* LegalCopyright Copyright (c) 2021 CTI */
	condition:
		all of them
}
