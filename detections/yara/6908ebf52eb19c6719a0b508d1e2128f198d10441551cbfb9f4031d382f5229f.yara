
rule PUA_VULN_Driver_MicrosoftCorporation_wantdsys_MicrosoftWindowsOperatingSystem_nSyX {
	meta:
		description = "Detects vulnerable driver mentioned in LOLDrivers project using VersionInfo values from the PE header - 8636fe3724f2bcba9399daffd6ef3c7e.bin"
		author = "Florian Roth"
		reference = "https://github.com/magicsword-io/LOLDrivers"
		hash = "6908ebf52eb19c6719a0b508d1e2128f198d10441551cbfb9f4031d382f5229f"
		date = "2023-05-23"
		score = 50
	strings:
		$ = { 00460069006c0065004400650073006300720069007000740069006f006e[1-8]00570041004e0020005400720061006e00730070006f007200740020004400720069007600650072 } /* FileDescription WAN Transport Driver */
		$ = { 0043006f006d00700061006e0079004e0061006d0065[1-8]004d006900630072006f0073006f0066007400200043006f00720070006f0072006100740069006f006e } /* CompanyName Microsoft Corporation */
		$ = { 00460069006c006500560065007200730069006f006e[1-8]0036002e0031002e0037003600300030002e003900330038 } /* FileVersion 6.1.7600.938 */
		$ = { 00500072006f006400750063007400560065007200730069006f006e[1-8]0036002e0031002e0037003600300030002e003900330038 } /* ProductVersion 6.1.7600.938 */
		$ = { 0049006e007400650072006e0061006c004e0061006d0065[1-8]00770061006e00740064002e007300790073 } /* InternalName wantd.sys */
		$ = { 00500072006f0064007500630074004e0061006d0065[1-8]004d006900630072006f0073006f00660074002000570069006e0064006f007700730020004f007000650072006100740069006e0067002000530079007300740065006d } /* ProductName Microsoft Windows Operating System */
		$ = { 004f0072006900670069006e0061006c00460069006c0065006e0061006d0065[1-8]00770061006e00740064002e007300790073 } /* OriginalFilename wantd.sys */
		$ = { 004c006500670061006c0043006f0070007900720069006700680074[1-8]004d006900630072006f0073006f0066007400200043006f00720070006f0072006100740069006f006e002e00200041006c006c0020007200690067006800740073002000720065007300650072007600650064002e } /* LegalCopyright Microsoft Corporation. All rights reserved. */
	condition:
		all of them
}
