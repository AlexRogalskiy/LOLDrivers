
rule PUA_VULN_Driver_MSI_NTIOLibsys_NTIOLib_54jE {
	meta:
		description = "Detects vulnerable driver mentioned in LOLDrivers project using VersionInfo values from the PE header - e9a30edef1105b8a64218f892b2e56ed.bin"
		author = "Florian Roth"
		reference = "https://github.com/magicsword-io/LOLDrivers"
		hash = "e83908eba2501a00ef9e74e7d1c8b4ff1279f1cd6051707fd51824f87e4378fa"
		date = "2023-05-23"
		score = 50
	strings:
		$ = { 00460069006c0065004400650073006300720069007000740069006f006e[1-8]004e00540049004f004c0069006200200066006f00720020004d00530049004300500055005f00430043 } /* FileDescription NTIOLib for MSICPU_CC */
		$ = { 0043006f006d00700061006e0079004e0061006d0065[1-8]004d00530049 } /* CompanyName MSI */
		$ = { 00460069006c006500560065007200730069006f006e[1-8]0031002e0030002e0030002e0030 } /* FileVersion 1.0.0.0 */
		$ = { 00500072006f006400750063007400560065007200730069006f006e[1-8]0031002e0030002e0030002e0030 } /* ProductVersion 1.0.0.0 */
		$ = { 0049006e007400650072006e0061006c004e0061006d0065[1-8]004e00540049004f004c00690062002e007300790073 } /* InternalName NTIOLib.sys */
		$ = { 00500072006f0064007500630074004e0061006d0065[1-8]004e00540049004f004c00690062 } /* ProductName NTIOLib */
		$ = { 004f0072006900670069006e0061006c00460069006c0065006e0061006d0065[1-8]004e00540049004f004c00690062002e007300790073 } /* OriginalFilename NTIOLib.sys */
		$ = { 004c006500670061006c0043006f0070007900720069006700680074[1-8]0043006f0070007900720069006700680074002000280043002900200032003000300038002d00320030003000390020004d00530049002e00200041006c006c0020007200690067006800740073002000720065007300650072007600650064002e } /* LegalCopyright Copyright (C) 2008-2009 MSI. All rights reserved. */
	condition:
		all of them
}
