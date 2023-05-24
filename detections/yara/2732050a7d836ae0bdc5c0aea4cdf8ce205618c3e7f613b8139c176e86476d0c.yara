
rule PUA_VULN_Driver_AVASTSoftware_aswArPotsys_AvastAntivirus_3zzj {
	meta:
		description = "Detects vulnerable driver mentioned in LOLDrivers project using VersionInfo values from the PE header - e4d4a22cbf94e6b0a92fc36d46741f56.bin"
		author = "Florian Roth"
		reference = "https://github.com/magicsword-io/LOLDrivers"
		hash = "2732050a7d836ae0bdc5c0aea4cdf8ce205618c3e7f613b8139c176e86476d0c"
		date = "2023-05-23"
		score = 50
	strings:
		$ = { 00460069006c0065004400650073006300720069007000740069006f006e[1-8]0041007600610073007400200061006e0074006900200072006f006f0074006b00690074 } /* FileDescription Avast anti rootkit */
		$ = { 0043006f006d00700061006e0079004e0061006d0065[1-8]0041005600410053005400200053006f006600740077006100720065 } /* CompanyName AVAST Software */
		$ = { 00460069006c006500560065007200730069006f006e[1-8]00310039002e0031002e0034003100330032002e0030 } /* FileVersion 19.1.4132.0 */
		$ = { 00500072006f006400750063007400560065007200730069006f006e[1-8]00310039002e0031002e0034003100330032002e0030 } /* ProductVersion 19.1.4132.0 */
		$ = { 0049006e007400650072006e0061006c004e0061006d0065[1-8]006100730077004100720050006f0074002e007300790073 } /* InternalName aswArPot.sys */
		$ = { 00500072006f0064007500630074004e0061006d0065[1-8]0041007600610073007400200041006e00740069007600690072007500730020 } /* ProductName Avast Antivirus  */
		$ = { 004f0072006900670069006e0061006c00460069006c0065006e0061006d0065[1-8]006100730077004100720050006f0074002e007300790073 } /* OriginalFilename aswArPot.sys */
		$ = { 004c006500670061006c0043006f0070007900720069006700680074[1-8]0043006f007000790072006900670068007400200028006300290020003200300031003800200041005600410053005400200053006f006600740077006100720065 } /* LegalCopyright Copyright (c) 2018 AVAST Software */
	condition:
		all of them
}
