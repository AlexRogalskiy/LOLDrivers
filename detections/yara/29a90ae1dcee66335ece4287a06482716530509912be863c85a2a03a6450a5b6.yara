
rule PUA_VULN_Driver_CorsairMemoryInc_CorsairLLAccess_CorsairLLAccess_8DZ2 {
	meta:
		description = "Detects vulnerable driver mentioned in LOLDrivers project using VersionInfo values from the PE header - 3b9698a9ee85f0b4edf150deef790ccd.bin, b34361d151c793415ef92ee5d368c053.bin"
		author = "Florian Roth"
		reference = "https://github.com/magicsword-io/LOLDrivers"
		hash = "5fad3775feb8b6f6dcbd1642ae6b6a565ff7b64eadfc9bf9777918b51696ab36"
		hash = "29a90ae1dcee66335ece4287a06482716530509912be863c85a2a03a6450a5b6"
		date = "2023-05-23"
		score = 50
	strings:
		$ = { 00460069006c0065004400650073006300720069007000740069006f006e[1-8]0043006f007200730061006900720020004c004c0020004100630063006500730073 } /* FileDescription Corsair LL Access */
		$ = { 0043006f006d00700061006e0079004e0061006d0065[1-8]0043006f007200730061006900720020004d0065006d006f00720079002c00200049006e0063002e } /* CompanyName Corsair Memory, Inc. */
		$ = { 00460069006c006500560065007200730069006f006e[1-8]0031002e0030002e00310036002e0030 } /* FileVersion 1.0.16.0 */
		$ = { 00500072006f006400750063007400560065007200730069006f006e[1-8]0031002e0030002e00310036002e0030 } /* ProductVersion 1.0.16.0 */
		$ = { 0049006e007400650072006e0061006c004e0061006d0065[1-8]0043006f007200730061006900720020004c004c0020004100630063006500730073 } /* InternalName Corsair LL Access */
		$ = { 00500072006f0064007500630074004e0061006d0065[1-8]0043006f007200730061006900720020004c004c0020004100630063006500730073 } /* ProductName Corsair LL Access */
		$ = { 004f0072006900670069006e0061006c00460069006c0065006e0061006d0065[1-8]0043006f007200730061006900720020004c004c0020004100630063006500730073 } /* OriginalFilename Corsair LL Access */
		$ = { 004c006500670061006c0043006f0070007900720069006700680074[1-8]0043006f007200730061006900720020004d0065006d006f00720079002c00200049006e0063002e002000280063002900200032003000310039002c00200041006c006c0020007200690067006800740073002000720065007300650072007600650064 } /* LegalCopyright Corsair Memory, Inc. (c) 2019, All rights reserved */
	condition:
		all of them
}
