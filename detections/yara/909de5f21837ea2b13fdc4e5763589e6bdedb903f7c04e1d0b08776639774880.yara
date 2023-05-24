
rule PUA_VULN_Driver_AdvancedMicroDevices_AMDRyzenMasterDriversys_AMDRyzenMasterServiceDriver_7iuq {
	meta:
		description = "Detects vulnerable driver mentioned in LOLDrivers project using VersionInfo values from the PE header - 130c5aec46bdec8d534df7222d160fdb.bin"
		author = "Florian Roth"
		reference = "https://github.com/magicsword-io/LOLDrivers"
		hash = "909de5f21837ea2b13fdc4e5763589e6bdedb903f7c04e1d0b08776639774880"
		date = "2023-05-23"
		score = 50
	strings:
		$ = { 00460069006c0065004400650073006300720069007000740069006f006e[1-8]0041004d0044002000520079007a0065006e0020004d00610073007400650072002000530065007200760069006300650020004400720069007600650072 } /* FileDescription AMD Ryzen Master Service Driver */
		$ = { 0043006f006d00700061006e0079004e0061006d0065[1-8]0041006400760061006e0063006500640020004d006900630072006f00200044006500760069006300650073 } /* CompanyName Advanced Micro Devices */
		$ = { 00460069006c006500560065007200730069006f006e[1-8]0031002e0035002e0030002e0030 } /* FileVersion 1.5.0.0 */
		$ = { 00500072006f006400750063007400560065007200730069006f006e[1-8]0031002e0035002e0030002e0030 } /* ProductVersion 1.5.0.0 */
		$ = { 0049006e007400650072006e0061006c004e0061006d0065[1-8]0041004d004400520079007a0065006e004d00610073007400650072004400720069007600650072002e007300790073 } /* InternalName AMDRyzenMasterDriver.sys */
		$ = { 00500072006f0064007500630074004e0061006d0065[1-8]0041004d0044002000520079007a0065006e0020004d00610073007400650072002000530065007200760069006300650020004400720069007600650072 } /* ProductName AMD Ryzen Master Service Driver */
		$ = { 004f0072006900670069006e0061006c00460069006c0065006e0061006d0065[1-8]0041004d004400520079007a0065006e004d00610073007400650072004400720069007600650072002e007300790073 } /* OriginalFilename AMDRyzenMasterDriver.sys */
		$ = { 004c006500670061006c0043006f0070007900720069006700680074[1-8]0043006f0070007900720069006700680074002000a90020003200300032003000200041004d0044002c00200049006e0063002e } /* LegalCopyright Copyright © 2020 AMD, Inc. */
	condition:
		all of them
}
