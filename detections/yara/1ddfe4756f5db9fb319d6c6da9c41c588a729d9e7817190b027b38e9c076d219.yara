
rule PUA_VULN_Driver_MSI_NTIOLibsys_NTIOLib_7o8e {
	meta:
		description = "Detects vulnerable driver mentioned in LOLDrivers project using VersionInfo values from the PE header - 7ed6030f14e66e743241f2c1fa783e69.bin"
		author = "Florian Roth"
		reference = "https://github.com/magicsword-io/LOLDrivers"
		hash = "1ddfe4756f5db9fb319d6c6da9c41c588a729d9e7817190b027b38e9c076d219"
		date = "2023-05-23"
		score = 50
	strings:
		$ = { 00460069006c0065004400650073006300720069007000740069006f006e[1-8]004e00540049004f004c00690062 } /* FileDescription NTIOLib */
		$ = { 0043006f006d00700061006e0079004e0061006d0065[1-8]004d00530049 } /* CompanyName MSI */
		$ = { 00460069006c006500560065007200730069006f006e[1-8]0031002e0030002e0030002e0033 } /* FileVersion 1.0.0.3 */
		$ = { 00500072006f006400750063007400560065007200730069006f006e[1-8]0031002e0030002e0030002e0033 } /* ProductVersion 1.0.0.3 */
		$ = { 0049006e007400650072006e0061006c004e0061006d0065[1-8]004e00540049004f004c00690062002e007300790073 } /* InternalName NTIOLib.sys */
		$ = { 00500072006f0064007500630074004e0061006d0065[1-8]004e00540049004f004c00690062 } /* ProductName NTIOLib */
		$ = { 004f0072006900670069006e0061006c00460069006c0065006e0061006d0065[1-8]004e00540049004f004c00690062002e007300790073 } /* OriginalFilename NTIOLib.sys */
		$ = { 004c006500670061006c0043006f0070007900720069006700680074[1-8]0043006f00700079007200690067006800740020002800430029002000320030003100360020004d006900630072006f002d005300740061007200200049004e00540027004c00200043004f002e002c0020004c00540044002e } /* LegalCopyright Copyright (C) 2016 Micro-Star INT'L CO., LTD. */
	condition:
		all of them
}
