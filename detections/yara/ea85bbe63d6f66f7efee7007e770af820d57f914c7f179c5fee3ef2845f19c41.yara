
rule PUA_VULN_Driver_ASUSTeKComputerInc_IOMapsys_ASUSKernelModeDriverforNT_M5Cs {
	meta:
		description = "Detects vulnerable driver mentioned in LOLDrivers project using VersionInfo values from the PE header - a01c412699b6f21645b2885c2bae4454.bin"
		author = "Florian Roth"
		reference = "https://github.com/magicsword-io/LOLDrivers"
		hash = "ea85bbe63d6f66f7efee7007e770af820d57f914c7f179c5fee3ef2845f19c41"
		date = "2023-05-23"
		score = 50
	strings:
		$ = { 00460069006c0065004400650073006300720069007000740069006f006e[1-8]00410053005500530020004b00650072006e0065006c0020004d006f00640065002000440072006900760065007200200066006f00720020004e00540020 } /* FileDescription ASUS Kernel Mode Driver for NT  */
		$ = { 0043006f006d00700061006e0079004e0061006d0065[1-8]004100530055005300540065004b00200043006f006d0070007500740065007200200049006e0063002e } /* CompanyName ASUSTeK Computer Inc. */
		$ = { 00460069006c006500560065007200730069006f006e[1-8]0031002e00300030 } /* FileVersion 1.00 */
		$ = { 00500072006f006400750063007400560065007200730069006f006e[1-8]0031002e00300030 } /* ProductVersion 1.00 */
		$ = { 0049006e007400650072006e0061006c004e0061006d0065[1-8]0049004f004d00610070002e007300790073 } /* InternalName IOMap.sys */
		$ = { 00500072006f0064007500630074004e0061006d0065[1-8]00410053005500530020004b00650072006e0065006c0020004d006f00640065002000440072006900760065007200200066006f00720020004e00540020 } /* ProductName ASUS Kernel Mode Driver for NT  */
		$ = { 004f0072006900670069006e0061006c00460069006c0065006e0061006d0065[1-8]0049004f004d00610070002e007300790073 } /* OriginalFilename IOMap.sys */
		$ = { 004c006500670061006c0043006f0070007900720069006700680074[1-8]0043006f0070007900720069006700680074002000320030003100300020004100530055005300540065004b00200043006f006d0070007500740065007200200049006e0063002e } /* LegalCopyright Copyright 2010 ASUSTeK Computer Inc. */
	condition:
		all of them
}
