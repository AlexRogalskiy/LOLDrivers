
rule PUA_VULN_Driver_PanYazilimBilisimTeknolojileriTicLtdSti_PanMonFltsys_PanCafeManager_3bab {
	meta:
		description = "Detects vulnerable driver mentioned in LOLDrivers project using VersionInfo values from the PE header - 2850608430dd089f24386f3336c84729.bin"
		author = "Florian Roth"
		reference = "https://github.com/magicsword-io/LOLDrivers"
		hash = "7e0124fcc7c95fdc34408cf154cb41e654dade8b898c71ad587b2090b1da30d7"
		date = "2023-05-23"
		score = 50
	strings:
		$ = { 00460069006c0065004400650073006300720069007000740069006f006e[1-8]00500061006e00430061006600650020004d0061006e0061006700650072002000460069006c00650020004d006f006e00690074006f0072 } /* FileDescription PanCafe Manager File Monitor */
		$ = { 0043006f006d00700061006e0079004e0061006d0065[1-8]00500061006e002000590061007a0069006c0069006d002000420069006c006900730069006d002000540065006b006e006f006c006f006a0069006c0065007200690020005400690063002e0020004c00740064002e0020005300740069002e } /* CompanyName Pan Yazilim Bilisim Teknolojileri Tic. Ltd. Sti. */
		$ = { 00460069006c006500560065007200730069006f006e[1-8]0031002e0030002e0030002e0030 } /* FileVersion 1.0.0.0 */
		$ = { 00500072006f006400750063007400560065007200730069006f006e[1-8]0031002e0030002e0030002e0030 } /* ProductVersion 1.0.0.0 */
		$ = { 0049006e007400650072006e0061006c004e0061006d0065[1-8]00500061006e004d006f006e0046006c0074002e007300790073 } /* InternalName PanMonFlt.sys */
		$ = { 00500072006f0064007500630074004e0061006d0065[1-8]00500061006e00430061006600650020004d0061006e0061006700650072 } /* ProductName PanCafe Manager */
		$ = { 004f0072006900670069006e0061006c00460069006c0065006e0061006d0065[1-8]00500061006e004d006f006e0046006c0074002e007300790073 } /* OriginalFilename PanMonFlt.sys */
		$ = { 004c006500670061006c0043006f0070007900720069006700680074[1-8]0043006f0070007900720069006700680074002000280063002900200032003000310032002d0032003000310034002000500061006e002000590061007a0131006c0131006d002000420069006c006900730069006d002000540065006b006e006f006c006f006a0069006c0065007200690020005400690063002e0020004c00740064002e0020005300740069002e } /* LegalCopyright Copyright (c) 2012-2014 Pan Yazılım Bilisim Teknolojileri Tic. Ltd. Sti. */
	condition:
		all of them
}
