
rule PUA_VULN_Driver_Sysinternalswwwsysinternalscom_procexpsys_ProcessExplorer_3862 {
	meta:
		description = "Detects vulnerable driver mentioned in LOLDrivers project using VersionInfo values from the PE header - a91a1bc393971a662a3210dac8c17dfd.bin, 6b3abe55c4d39e305a11b4d1091dfaac.bin"
		author = "Florian Roth"
		reference = "https://github.com/magicsword-io/LOLDrivers"
		hash = "3ff39728f1c11d1108f65ec5eb3d722fd1a1279c530d79712e0d32b34880baaa"
		hash = "86721ee8161096348ed3dbe1ccbf933ae004c315b1691745a8af4a0df9fed675"
		date = "2023-05-23"
		score = 50
	strings:
		$ = { 00460069006c0065004400650073006300720069007000740069006f006e[1-8]00500072006f00630065007300730020004500780070006c006f007200650072 } /* FileDescription Process Explorer */
		$ = { 0043006f006d00700061006e0079004e0061006d0065[1-8]0053007900730069006e007400650072006e0061006c00730020002d0020007700770077002e0073007900730069006e007400650072006e0061006c0073002e0063006f006d } /* CompanyName Sysinternals - www.sysinternals.com */
		$ = { 00460069006c006500560065007200730069006f006e[1-8]00310031002e00340030 } /* FileVersion 11.40 */
		$ = { 00500072006f006400750063007400560065007200730069006f006e[1-8]00310031002e00340030 } /* ProductVersion 11.40 */
		$ = { 0049006e007400650072006e0061006c004e0061006d0065[1-8]00700072006f0063006500780070002e007300790073 } /* InternalName procexp.sys */
		$ = { 00500072006f0064007500630074004e0061006d0065[1-8]00500072006f00630065007300730020004500780070006c006f007200650072 } /* ProductName Process Explorer */
		$ = { 004f0072006900670069006e0061006c00460069006c0065006e0061006d0065[1-8]00700072006f0063006500780070002e005300790073 } /* OriginalFilename procexp.Sys */
		$ = { 004c006500670061006c0043006f0070007900720069006700680074[1-8]0043006f007000790072006900670068007400200028004300290020004d002e002000520075007300730069006e006f007600690063006800200031003900390036002d0032003000310030 } /* LegalCopyright Copyright (C) M. Russinovich 1996-2010 */
	condition:
		all of them
}
