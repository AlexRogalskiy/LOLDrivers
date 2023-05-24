
rule PUA_VULN_Driver_WindowsRWinDDKprovider_vmdrvsys_WindowsRWinDDKdriver_7VyJ {
	meta:
		description = "Detects vulnerable driver mentioned in LOLDrivers project using VersionInfo values from the PE header - 6d67da13cf84f15f6797ed929dd8cf5d.bin, d5db81974ffda566fa821400419f59be.bin, 0e625b7a7c3f75524e307b160f8db337.bin"
		author = "Florian Roth"
		reference = "https://github.com/magicsword-io/LOLDrivers"
		hash = "5c0b429e5935814457934fa9c10ac7a88e19068fa1bd152879e4e9b89c103921"
		hash = "32cccc4f249499061c0afa18f534c825d01034a1f6815f5506bf4c4ff55d1351"
		hash = "d884ca8cc4ef1826ca3ab03eb3c2d8f356ba25f2d20db0a7d9fc251c565be7f3"
		date = "2023-05-23"
		score = 50
	strings:
		$ = { 00460069006c0065004400650073006300720069007000740069006f006e[1-8]0056006f006900630065006d006f00640020005600690072007400750061006c00200041007500640069006f00200044006500760069006300650020002800570044004d0029 } /* FileDescription Voicemod Virtual Audio Device (WDM) */
		$ = { 0043006f006d00700061006e0079004e0061006d0065[1-8]00570069006e0064006f007700730020002800520029002000570069006e00200037002000440044004b002000700072006f00760069006400650072 } /* CompanyName Windows (R) Win 7 DDK provider */
		$ = { 00460069006c006500560065007200730069006f006e[1-8]00310030002e0030002e00310030003000310031002e00310036003300380034 } /* FileVersion 10.0.10011.16384 */
		$ = { 00500072006f006400750063007400560065007200730069006f006e[1-8]00310030002e0030002e00310030003000310031002e00310036003300380034 } /* ProductVersion 10.0.10011.16384 */
		$ = { 0049006e007400650072006e0061006c004e0061006d0065[1-8]0076006d006400720076002e007300790073 } /* InternalName vmdrv.sys */
		$ = { 00500072006f0064007500630074004e0061006d0065[1-8]00570069006e0064006f007700730020002800520029002000570069006e00200037002000440044004b0020006400720069007600650072 } /* ProductName Windows (R) Win 7 DDK driver */
		$ = { 004f0072006900670069006e0061006c00460069006c0065006e0061006d0065[1-8]0076006d006400720076002e007300790073 } /* OriginalFilename vmdrv.sys */
		$ = { 004c006500670061006c0043006f0070007900720069006700680074[1-8]0043006f0070007900720069006700680074002000280043002900200056006f006900630065006d006f006400200053002e004c002e0032003000310030002d0032003000320030 } /* LegalCopyright Copyright (C) Voicemod S.L.2010-2020 */
	condition:
		all of them
}
