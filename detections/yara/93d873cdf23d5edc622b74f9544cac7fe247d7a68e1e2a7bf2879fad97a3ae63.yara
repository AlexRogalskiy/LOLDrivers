
rule PUA_VULN_Driver_RazerInc_Rzpnk_Rzpnk_4TnT {
	meta:
		description = "Detects vulnerable driver mentioned in LOLDrivers project using VersionInfo values from the PE header - 4cc3ddd5ae268d9a154a426af2c23ef9.bin"
		author = "Florian Roth"
		reference = "https://github.com/magicsword-io/LOLDrivers"
		hash = "93d873cdf23d5edc622b74f9544cac7fe247d7a68e1e2a7bf2879fad97a3ae63"
		date = "2023-05-23"
		score = 50
	strings:
		$ = { 00460069006c0065004400650073006300720069007000740069006f006e[1-8]00520061007a006500720020004f007600650072006c0061007900200053007500700070006f00720074 } /* FileDescription Razer Overlay Support */
		$ = { 0043006f006d00700061006e0079004e0061006d0065[1-8]00520061007a00650072002c00200049006e0063002e } /* CompanyName Razer, Inc. */
		$ = { 00460069006c006500560065007200730069006f006e[1-8]0031002e0030002e00310032002e00310030003100350035 } /* FileVersion 1.0.12.10155 */
		$ = { 00500072006f006400750063007400560065007200730069006f006e[1-8]0031002e0030002e00310032002e00310030003100350035 } /* ProductVersion 1.0.12.10155 */
		$ = { 0049006e007400650072006e0061006c004e0061006d0065[1-8]0052007a0070006e006b } /* InternalName Rzpnk */
		$ = { 00500072006f0064007500630074004e0061006d0065[1-8]0052007a0070006e006b } /* ProductName Rzpnk */
		$ = { 004f0072006900670069006e0061006c00460069006c0065006e0061006d0065[1-8]0052007a0070006e006b002e007300790073 } /* OriginalFilename Rzpnk.sys */
		$ = { 004c006500670061006c0043006f0070007900720069006700680074[1-8]0043006f0070007900720069006700680074002000280043002900200032003000310030002d0032003000310037002e002000520061007a00650072002c00200049006e0063002e } /* LegalCopyright Copyright (C) 2010-2017. Razer, Inc. */
	condition:
		all of them
}
