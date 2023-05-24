
rule PUA_VULN_Driver_WindowsRCodenameLonghornDDKprovider_rtkiosys_WindowsRCodenameLonghornDDKdriver_3att {
	meta:
		description = "Detects vulnerable driver mentioned in LOLDrivers project using VersionInfo values from the PE header - ffd0c87d9bf894af26823fbde94c71b6.bin, 664ad9cf500916c94fc2c0020660ac4e.bin, daf800da15b33bf1a84ee7afc59f0656.bin"
		author = "Florian Roth"
		reference = "https://github.com/magicsword-io/LOLDrivers"
		hash = "916c535957a3b8cbf3336b63b2260ea4055163a9e6b214f2a7005d6d36a4a677"
		hash = "caa85c44eb511377ea7426ff10df00a701c07ffb384eef8287636a4bca0b53ab"
		hash = "478917514be37b32d5ccf76e4009f6f952f39f5553953544f1b0688befd95e82"
		date = "2023-05-23"
		score = 50
	strings:
		$ = { 00460069006c0065004400650073006300720069007000740069006f006e[1-8]005200650061006c00740065006b00200049004f004400720069007600650072 } /* FileDescription Realtek IODriver */
		$ = { 0043006f006d00700061006e0079004e0061006d0065[1-8]00570069006e0064006f00770073002000280052002900200043006f00640065006e0061006d00650020004c006f006e00670068006f0072006e002000440044004b002000700072006f00760069006400650072 } /* CompanyName Windows (R) Codename Longhorn DDK provider */
		$ = { 00460069006c006500560065007200730069006f006e[1-8]0036002e0030002e0036003000300030002e003100360033003800360020006200750069006c0074002000620079003a002000570069006e00440044004b } /* FileVersion 6.0.6000.16386 built by: WinDDK */
		$ = { 00500072006f006400750063007400560065007200730069006f006e[1-8]0036002e0030002e0036003000300030002e00310036003300380036 } /* ProductVersion 6.0.6000.16386 */
		$ = { 0049006e007400650072006e0061006c004e0061006d0065[1-8]00720074006b0069006f002e007300790073 } /* InternalName rtkio.sys */
		$ = { 00500072006f0064007500630074004e0061006d0065[1-8]00570069006e0064006f00770073002000280052002900200043006f00640065006e0061006d00650020004c006f006e00670068006f0072006e002000440044004b0020006400720069007600650072 } /* ProductName Windows (R) Codename Longhorn DDK driver */
		$ = { 004f0072006900670069006e0061006c00460069006c0065006e0061006d0065[1-8]00720074006b0069006f002e007300790073 } /* OriginalFilename rtkio.sys */
		$ = { 004c006500670061006c0043006f0070007900720069006700680074[1-8]00a90020004d006900630072006f0073006f0066007400200043006f00720070006f0072006100740069006f006e002e00200041006c006c0020007200690067006800740073002000720065007300650072007600650064002e } /* LegalCopyright © Microsoft Corporation. All rights reserved. */
	condition:
		all of them
}
