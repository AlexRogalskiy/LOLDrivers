
rule PUA_VULN_Driver_TGSoftSas_viragtsys_VirITAgentSystem_8YtC {
	meta:
		description = "Detects vulnerable driver mentioned in LOLDrivers project using VersionInfo values from the PE header - 650f6531db6fb0ed25d7fc70be35a4da.bin"
		author = "Florian Roth"
		reference = "https://github.com/magicsword-io/LOLDrivers"
		hash = "2a6212f3b68a6f263e96420b3607b31cfdfe51afff516f3c87d27bf8a89721e8"
		date = "2023-05-23"
		score = 50
	strings:
		$ = { 00460069006c0065004400650073006300720069007000740069006f006e[1-8]005600690072004900540020004100670065006e0074002000530079007300740065006d } /* FileDescription VirIT Agent System */
		$ = { 0043006f006d00700061006e0079004e0061006d0065[1-8]0054004700200053006f0066007400200053002e0061002e0073002e } /* CompanyName TG Soft S.a.s. */
		$ = { 00460069006c006500560065007200730069006f006e[1-8]0031002c002000360035002c00200030002c00200030 } /* FileVersion 1, 65, 0, 0 */
		$ = { 00500072006f006400750063007400560065007200730069006f006e[1-8]0031002c002000360035002c00200030002c00200030 } /* ProductVersion 1, 65, 0, 0 */
		$ = { 0049006e007400650072006e0061006c004e0061006d0065[1-8]007600690072006100670074002e007300790073 } /* InternalName viragt.sys */
		$ = { 00500072006f0064007500630074004e0061006d0065[1-8]005600690072004900540020004100670065006e0074002000530079007300740065006d } /* ProductName VirIT Agent System */
		$ = { 004f0072006900670069006e0061006c00460069006c0065006e0061006d0065[1-8]007600690072006100670074002e007300790073 } /* OriginalFilename viragt.sys */
		$ = { 004c006500670061006c0043006f0070007900720069006700680074[1-8]0043006f0070007900720069006700680074002000280043002900200054004700200053006f0066007400200053002e0061002e0073002e00200032003000300036002c002000320030003100320020002d0020007700770077002e007400670073006f00660074002e00690074 } /* LegalCopyright Copyright (C) TG Soft S.a.s. 2006, 2012 - www.tgsoft.it */
	condition:
		all of them
}
