***NOTES***

TO BUILD:
1. Modify Tools\scons\build_scons.bat to point to your Python and SCONS installation
2. Modify Presets\fs_softune_mb91520.py to point to your Softune compiler
3. Current configuration assumes C:\Softune6 and C:\Python25\scons-1.2.0

TO DEBUG:
1. Create Softune workspace
2. Use edit source search path in Debug Environment to point to _source folder

TO GENERATE RTE:
1. Use command line options: 
--samples=memmap -eao=disable --os-define-osenv=RTAOS40 -dv8aur=1 --strict-unconnected-rport-check=off -nts

TO GENERATE BSW:
1. Use Code Generation perspective
2. Manually copy Com related files to ComStackGen
3. Manually copy EcuM related files to EcuMGen
4. Repeat for other modules as necessary

****************************************************************************************

Description of folder structure:

ASW
  - Contains all SWC components (each has own folder)
  - Includes code, under "code" folder and arxml files
  - Any source code included under a "code" folder with be included in
    the build automatically due to a CNH implemented script

BSW
  - BspWrapper
    - Implementation of BSP Wrapper from ETAS
  - BswConfig
    - Use this as top level for importing into BSWDT
	- All files generate to _out, then can be manually copied into respective folders
    - Also contains all ECUC value files, including stub files
  - ComStackGen
    - Place to put ComStack related BSW code
  - DemGen
    - Place to put Dem related BSW code
  - EcuMGen
    - Place to put EcuM related BSW code
  - McalConfig
    - Use this as top level for importing into TRESOS
	- Contains all configuration files (XDM)
  - McalGen
    - TRESOS automatically generate code into this folder's subfolders
  - XcpGen
    - Place for XCP code generated from XCP tool from ETAS
	
Config
  - Infrastructure files related to compiler and microprocessor
  - Linker file
  
EnvSw
  - Build
    - Contains python build files
	  - If adding more source code, this is where it should be added
  - StartupOs
    - Startup code for the micro
	- Os configuration and source code
  - Stubs
    - Current stubbed implementations

RTE
  - RteConfig
    - Use this as top level for importing into ISOLAR-A
	  - Also files are linked throughout project
	  - When adding files to ISOLAR-A, use import filesystem and create links throughout 
	    project
  - RteGen
    - Output from RTA-RTE generation

Tools
  - Build configuration
  - XcpConfigTool for generating XCP configuration
  
Buildall.bat
  - Starts build process
  
Clean.bat
  - Removes existing build artifacts for fresh build