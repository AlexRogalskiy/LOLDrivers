
rule PUA_VULN_Driver_WindowsRWinDDKprovider_CupFixerxsys_WindowsRWinDDKdriver_7LX2 {
	meta:
		description = "Detects vulnerable driver mentioned in LOLDrivers project using VersionInfo values from the PE header - 2b3e0db4f00d4b3d0b4d178234b02e72.bin"
		author = "Florian Roth"
		reference = "https://github.com/magicsword-io/LOLDrivers"
		hash = "8c748ae5dcc10614cc134064c99367d28f3131d1f1dda0c9c29e99279dc1bdd9"
		date = "2023-05-23"
		score = 50
	strings:
		$ = { 00460069006c0065004400650073006300720069007000740069006f006e[1-8]00530069006e0063006500790020004300750070002000460069007800650072 } /* FileDescription Sincey Cup Fixer */
		$ = { 0043006f006d00700061006e0079004e0061006d0065[1-8]00570069006e0064006f007700730020002800520029002000570069006e00200037002000440044004b002000700072006f00760069006400650072 } /* CompanyName Windows (R) Win 7 DDK provider */
		$ = { 00460069006c006500560065007200730069006f006e[1-8]00330032002e0030002e00310030003000310031002e00310033003300330037 } /* FileVersion 32.0.10011.13337 */
		$ = { 00500072006f006400750063007400560065007200730069006f006e[1-8]00330032002e0030002e00310030003000310031002e00310033003300330037 } /* ProductVersion 32.0.10011.13337 */
		$ = { 0049006e007400650072006e0061006c004e0061006d0065[1-8]00430075007000460069007800650072007800360034002e007300790073 } /* InternalName CupFixerx64.sys */
		$ = { 00500072006f0064007500630074004e0061006d0065[1-8]00570069006e0064006f007700730020002800520029002000570069006e00200037002000440044004b0020006400720069007600650072 } /* ProductName Windows (R) Win 7 DDK driver */
		$ = { 004f0072006900670069006e0061006c00460069006c0065006e0061006d0065[1-8]00430075007000460069007800650072007800360034002e007300790073 } /* OriginalFilename CupFixerx64.sys */
		$ = { 004c006500670061006c0043006f0070007900720069006700680074[1-8]00a90020004d006900630072006f0073006f0066007400200043006f00720070006f0072006100740069006f006e002e00200041006c006c0020007200690067006800740073002000720065007300650072007600650064002e } /* LegalCopyright © Microsoft Corporation. All rights reserved. */
	condition:
		all of them
}
