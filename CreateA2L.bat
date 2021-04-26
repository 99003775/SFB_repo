rem TODO: move this into an SCons target and tool and make SWC A2L files target objects!

perl .\Tools\mergeA2Lfiles.pl sfb.a2t __output.a2l ^
ASW\common\SFBCmnS\SFBCmnS.a2l ^
ASW\common\SFBStub\SFBStub.a2l ^
ASW\hvac\ATCA\ATCA.a2l ^
ASW\hvac\ATCS\ATCS.a2l ^
ASW\hvac\ATCADIST\ATCADIST.a2l ^
ASW\hvac\ATCAFLOW\ATCAFLOW.a2l ^
ASW\hvac\ATCCMPR\ATCCMPR.a2l ^
ASW\hvac\ATCMODES\ATCMODES.a2l ^
ASW\hvac\ATCTDC\ATCTDC.a2l ^
ASW\hvac\ATCSPC\ATCSPC.a2l ^
ASW\hvac\ATCWVALV\ATCWVALV.a2l ^
ASW\interior_light_ss\CIL\CIL.a2l ^
ASW\interior_light_ss\CILA\CILA.a2l ^
ASW\interior_light_ss\CILS\CILS.a2l ^
ASW\power_ss\PD\PD.a2l ^
ASW\power_ss\PDA\PDA.a2l ^
ASW\power_ss\PDS\PDS.a2l ^
ASW\road_lights_ss\VRL\VRL.a2l ^
ASW\road_lights_ss\VRLA\VRLA.a2l ^
ASW\road_lights_ss\VRLS\VRLS.a2l ^
ASW\vehicle_body_ss\VB\VB.a2l ^
ASW\vehicle_body_ss\VBA\VBA.a2l ^
ASW\vehicle_body_ss\VBS\VBS.a2l ^
ASW\vehicle_light_ind_ss\VIL\VIL.a2l ^
ASW\vehicle_light_ind_ss\VILA\VILA.a2l ^
ASW\vehicle_light_ind_ss\VILS\VILS.a2l ^
ASW\wiper_ss\WSW\WSW.a2l ^
ASW\wiper_ss\WSWA\WSWA.a2l ^
ASW\wiper_ss\WSWS\WSWS.a2l ^
ASW\work_light_ss\VWL\VWL.a2l ^
ASW\work_light_ss\VWLA\VWLA.a2l ^
ASW\work_light_ss\VWLS\VWLS.a2l ^
ASW\common\InputManager\INMN.a2l ^
ASW\common\OutputManager\OPMN.a2l

perl Tools\updateAsap2Addresses.pl Output\bin\Internal_CT56_SFB_00_00_00_05.map  __output.a2l Output\bin\Internal_CT56_SFB_00_00_00_05.a2l

DEL __output.a2l

timeout 10
