
rule PUA_VULN_Driver_ZemanaLtd_ZAM_8HNn {
	meta:
		description = "Detects vulnerable driver mentioned in LOLDrivers project using VersionInfo values from the PE header - 2a3ce41bb2a7894d939fbd1b20dae5a0.bin"
		author = "Florian Roth"
		reference = "https://github.com/magicsword-io/LOLDrivers"
		hash = "2bbc6b9dd5e6d0327250b32305be20c89b19b56d33a096522ee33f22d8c82ff1"
		date = "2023-05-23"
		score = 50
	strings:
		$ = { 00460069006c0065004400650073006300720069007000740069006f006e[1-8]005a0041004d } /* FileDescription ZAM */
		$ = { 0043006f006d00700061006e0079004e0061006d0065[1-8]005a0065006d0061006e00610020004c00740064002e } /* CompanyName Zemana Ltd. */
		$ = { 00500072006f006400750063007400560065007200730069006f006e[1-8]0032002e00310038002e003300370031 } /* ProductVersion 2.18.371 */
		$ = { 00500072006f0064007500630074004e0061006d0065[1-8]005a0041004d } /* ProductName ZAM */
		$ = { 004c006500670061006c0043006f0070007900720069006700680074[1-8]005a0065006d0061006e00610020004c00740064002e00200041006c006c0020007200690067006800740073002000720065007300650072007600650064002e } /* LegalCopyright Zemana Ltd. All rights reserved. */
	condition:
		all of them
}
