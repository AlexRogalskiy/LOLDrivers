
rule PUA_VULN_Driver_ElaborateBytesAG_ElbyCDIO_CDRTools_7GxT {
	meta:
		description = "Detects vulnerable driver mentioned in LOLDrivers project using VersionInfo values from the PE header - aaa8999a169e39fb8b48ae49cd6ac30a.bin"
		author = "Florian Roth"
		reference = "https://github.com/magicsword-io/LOLDrivers"
		hash = "8137ce22d0d0fc5ea5b174d6ad3506a4949506477b1325da2ccb76511f4c4f60"
		date = "2023-05-23"
		score = 50
	strings:
		$ = { 00460069006c0065004400650073006300720069007000740069006f006e[1-8]0045006c0062007900430044002000570069006e0064006f007700730020004e0054002f0032003000300030002f0058005000200049002f004f0020006400720069007600650072 } /* FileDescription ElbyCD Windows NT/2000/XP I/O driver */
		$ = { 0043006f006d00700061006e0079004e0061006d0065[1-8]0045006c00610062006f0072006100740065002000420079007400650073002000410047 } /* CompanyName Elaborate Bytes AG */
		$ = { 00460069006c006500560065007200730069006f006e[1-8]0036002c00200030002c00200031002c00200030 } /* FileVersion 6, 0, 1, 0 */
		$ = { 00500072006f006400750063007400560065007200730069006f006e[1-8]0036002c00200030002c00200030002c00200030 } /* ProductVersion 6, 0, 0, 0 */
		$ = { 0049006e007400650072006e0061006c004e0061006d0065[1-8]0045006c00620079004300440049004f } /* InternalName ElbyCDIO */
		$ = { 00500072006f0064007500630074004e0061006d0065[1-8]0043004400520054006f006f006c0073 } /* ProductName CDRTools */
		$ = { 004f0072006900670069006e0061006c00460069006c0065006e0061006d0065[1-8]0045006c00620079004300440049004f002e007300790073 } /* OriginalFilename ElbyCDIO.sys */
		$ = { 004c006500670061006c0043006f0070007900720069006700680074[1-8]0043006f00700079007200690067006800740020002800430029002000320030003000300020002d0020003200300030003700200045006c00610062006f0072006100740065002000420079007400650073002000410047 } /* LegalCopyright Copyright (C) 2000 - 2007 Elaborate Bytes AG */
	condition:
		all of them
}
