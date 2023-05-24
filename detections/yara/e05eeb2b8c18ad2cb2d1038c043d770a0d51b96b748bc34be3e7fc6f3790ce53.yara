
rule PUA_VULN_Driver_TGSoftSas_viragtsys_VirITAgentSystem_4TbQ {
	meta:
		description = "Detects vulnerable driver mentioned in LOLDrivers project using VersionInfo values from the PE header - e79c91c27df3eaf82fb7bd1280172517.bin"
		author = "Florian Roth"
		reference = "https://github.com/magicsword-io/LOLDrivers"
		hash = "e05eeb2b8c18ad2cb2d1038c043d770a0d51b96b748bc34be3e7fc6f3790ce53"
		date = "2023-05-23"
		score = 50
	strings:
		$ = { 00460069006c0065004400650073006300720069007000740069006f006e[1-8]005600690072004900540020004100670065006e0074002000530079007300740065006d } /* FileDescription VirIT Agent System */
		$ = { 0043006f006d00700061006e0079004e0061006d0065[1-8]0054004700200053006f0066007400200053002e0061002e0073002e } /* CompanyName TG Soft S.a.s. */
		$ = { 00460069006c006500560065007200730069006f006e[1-8]0031002c002000370032002c00200030002c00200030 } /* FileVersion 1, 72, 0, 0 */
		$ = { 00500072006f006400750063007400560065007200730069006f006e[1-8]0031002c002000370032002c00200030002c00200030 } /* ProductVersion 1, 72, 0, 0 */
		$ = { 0049006e007400650072006e0061006c004e0061006d0065[1-8]007600690072006100670074002e007300790073 } /* InternalName viragt.sys */
		$ = { 00500072006f0064007500630074004e0061006d0065[1-8]005600690072004900540020004100670065006e0074002000530079007300740065006d } /* ProductName VirIT Agent System */
		$ = { 004f0072006900670069006e0061006c00460069006c0065006e0061006d0065[1-8]007600690072006100670074002e007300790073 } /* OriginalFilename viragt.sys */
		$ = { 004c006500670061006c0043006f0070007900720069006700680074[1-8]0043006f0070007900720069006700680074002000280043002900200054004700200053006f0066007400200053002e0061002e0073002e00200032003000300036002c002000320030003100330020002d0020007700770077002e007400670073006f00660074002e00690074 } /* LegalCopyright Copyright (C) TG Soft S.a.s. 2006, 2013 - www.tgsoft.it */
	condition:
		all of them
}
