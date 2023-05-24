
rule PUA_VULN_Driver_SiSoftware_SANDRA_SiSoftwareSandra_5NbJ {
	meta:
		description = "Detects vulnerable driver mentioned in LOLDrivers project using VersionInfo values from the PE header - c842827d4704a5ef53a809463254e1cc.bin"
		author = "Florian Roth"
		reference = "https://github.com/magicsword-io/LOLDrivers"
		hash = "3e274df646f191d2705c0beaa35eeea84808593c3b333809f13632782e27ad75"
		date = "2023-05-23"
		score = 50
	strings:
		$ = { 00460069006c0065004400650073006300720069007000740069006f006e[1-8]00530061006e006400720061002000440065007600690063006500200044007200690076006500720020002800570069006e003600340020007800360034002900280055006e00690063006f006400650029 } /* FileDescription Sandra Device Driver (Win64 x64)(Unicode) */
		$ = { 0043006f006d00700061006e0079004e0061006d0065[1-8]005300690053006f006600740077006100720065 } /* CompanyName SiSoftware */
		$ = { 00460069006c006500560065007200730069006f006e[1-8]00310030002e0037002e0031002e00310020006200750069006c0074002000620079003a002000570069006e00440044004b } /* FileVersion 10.7.1.1 built by: WinDDK */
		$ = { 00500072006f006400750063007400560065007200730069006f006e[1-8]00310030002e0037002e0031002e0031 } /* ProductVersion 10.7.1.1 */
		$ = { 0049006e007400650072006e0061006c004e0061006d0065[1-8]00530041004e004400520041 } /* InternalName SANDRA */
		$ = { 00500072006f0064007500630074004e0061006d0065[1-8]005300690053006f006600740077006100720065002000530061006e006400720061 } /* ProductName SiSoftware Sandra */
		$ = { 004f0072006900670069006e0061006c00460069006c0065006e0061006d0065[1-8]00530041004e004400520041 } /* OriginalFilename SANDRA */
		$ = { 004c006500670061006c0043006f0070007900720069006700680074[1-8]0043006f0070007900720069006700680074002000a90020005300690053006f0066007400770061007200650020004c0074006400200031003900390035002d0032003000300037002e00200041006c006c0020007200690067006800740073002000720065007300650072007600650064002e } /* LegalCopyright Copyright © SiSoftware Ltd 1995-2007. All rights reserved. */
	condition:
		all of them
}
