<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="21008000">
	<Item Name="My Computer" Type="My Computer">
		<Property Name="server.app.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.control.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.tcp.enabled" Type="Bool">false</Property>
		<Property Name="server.tcp.port" Type="Int">0</Property>
		<Property Name="server.tcp.serviceName" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.tcp.serviceName.default" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="specify.custom.address" Type="Bool">false</Property>
		<Item Name="Dependencies" Type="Dependencies"/>
		<Item Name="Build Specifications" Type="Build"/>
	</Item>
	<Item Name="RT CompactRIO Target" Type="RT CompactRIO">
		<Property Name="alias.name" Type="Str">RT CompactRIO Target</Property>
		<Property Name="alias.value" Type="Str">192.168.0.89</Property>
		<Property Name="CCSymbols" Type="Str">TARGET_TYPE,RT;OS,Linux;CPU,x64;DeviceCode,7735;</Property>
		<Property Name="crio.ControllerPID" Type="Str">7735</Property>
		<Property Name="host.ResponsivenessCheckEnabled" Type="Bool">true</Property>
		<Property Name="host.ResponsivenessCheckPingDelay" Type="UInt">5000</Property>
		<Property Name="host.ResponsivenessCheckPingTimeout" Type="UInt">1000</Property>
		<Property Name="host.TargetCPUID" Type="UInt">9</Property>
		<Property Name="host.TargetOSID" Type="UInt">19</Property>
		<Property Name="host.TargetUIEnabled" Type="Bool">false</Property>
		<Property Name="target.cleanupVisa" Type="Bool">false</Property>
		<Property Name="target.FPProtocolGlobals_ControlTimeLimit" Type="Int">300</Property>
		<Property Name="target.getDefault-&gt;WebServer.Port" Type="Int">80</Property>
		<Property Name="target.getDefault-&gt;WebServer.Timeout" Type="Int">60</Property>
		<Property Name="target.IOScan.Faults" Type="Str"></Property>
		<Property Name="target.IOScan.NetVarPeriod" Type="UInt">100</Property>
		<Property Name="target.IOScan.NetWatchdogEnabled" Type="Bool">false</Property>
		<Property Name="target.IOScan.Period" Type="UInt">10000</Property>
		<Property Name="target.IOScan.PowerupMode" Type="UInt">0</Property>
		<Property Name="target.IOScan.Priority" Type="UInt">0</Property>
		<Property Name="target.IOScan.ReportModeConflict" Type="Bool">true</Property>
		<Property Name="target.IsRemotePanelSupported" Type="Bool">true</Property>
		<Property Name="target.RTCPULoadMonitoringEnabled" Type="Bool">true</Property>
		<Property Name="target.RTDebugWebServerHTTPPort" Type="Int">8001</Property>
		<Property Name="target.RTTarget.ApplicationPath" Type="Path">/c/ni-rt/startup/startup.rtexe</Property>
		<Property Name="target.RTTarget.EnableFileSharing" Type="Bool">true</Property>
		<Property Name="target.RTTarget.IPAccess" Type="Str">+*</Property>
		<Property Name="target.RTTarget.LaunchAppAtBoot" Type="Bool">false</Property>
		<Property Name="target.RTTarget.VIPath" Type="Path">/home/lvuser/natinst/bin</Property>
		<Property Name="target.server.app.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="target.server.control.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="target.server.tcp.access" Type="Str">+*</Property>
		<Property Name="target.server.tcp.enabled" Type="Bool">false</Property>
		<Property Name="target.server.tcp.paranoid" Type="Bool">true</Property>
		<Property Name="target.server.tcp.port" Type="Int">3363</Property>
		<Property Name="target.server.tcp.serviceName" Type="Str">Main Application Instance/VI Server</Property>
		<Property Name="target.server.tcp.serviceName.default" Type="Str">Main Application Instance/VI Server</Property>
		<Property Name="target.server.vi.access" Type="Str">+*</Property>
		<Property Name="target.server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="target.server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="target.WebServer.Config" Type="Str">Listen 8000

NI.ServerName default
DocumentRoot "$LVSERVER_DOCROOT"
TypesConfig "$LVSERVER_CONFIGROOT/mime.types"
DirectoryIndex index.htm
WorkerLimit 10
InactivityTimeout 60

LoadModulePath "$LVSERVER_MODULEPATHS"
LoadModule LVAuth lvauthmodule
LoadModule LVRFP lvrfpmodule

#
# Pipeline Definition
#

SetConnector netConnector

AddHandler LVAuth
AddHandler LVRFP

AddHandler fileHandler ""

AddOutputFilter chunkFilter


</Property>
		<Property Name="target.WebServer.Enabled" Type="Bool">false</Property>
		<Property Name="target.WebServer.LogEnabled" Type="Bool">false</Property>
		<Property Name="target.WebServer.LogPath" Type="Path">/c/ni-rt/system/www/www.log</Property>
		<Property Name="target.WebServer.Port" Type="Int">80</Property>
		<Property Name="target.WebServer.RootPath" Type="Path">/c/ni-rt/system/www</Property>
		<Property Name="target.WebServer.TcpAccess" Type="Str">c+*</Property>
		<Property Name="target.WebServer.Timeout" Type="Int">60</Property>
		<Property Name="target.WebServer.ViAccess" Type="Str">+*</Property>
		<Property Name="target.webservices.SecurityAPIKey" Type="Str">PqVr/ifkAQh+lVrdPIykXlFvg12GhhQFR8H9cUhphgg=:pTe9HRlQuMfJxAG6QCGq7UvoUpJzAzWGKy5SbZ+roSU=</Property>
		<Property Name="target.webservices.ValidTimestampWindow" Type="Int">15</Property>
		<Item Name="Chassis" Type="cRIO Chassis">
			<Property Name="crio.ProgrammingMode" Type="Str">fpga</Property>
			<Property Name="crio.ResourceID" Type="Str">RIO0</Property>
			<Property Name="crio.Type" Type="Str">cRIO-9033</Property>
			<Property Name="NI.SortType" Type="Int">3</Property>
			<Item Name="Real-Time Scan Resources" Type="Module Container">
				<Property Name="crio.ModuleContainerType" Type="Str">crio.RSIModuleContainer</Property>
			</Item>
			<Item Name="FPGA Target" Type="FPGA Target">
				<Property Name="AutoRun" Type="Bool">false</Property>
				<Property Name="configString.guid" Type="Str">{0F316E43-E1A0-4FAE-9A7B-267FED9949CC}ArbitrationForOutputData=NeverArbitrate;resource=/crio_Mod1/User LED1;0;ReadMethodType=bool;WriteMethodType=bool{1272B6F0-9237-4E8B-9D0B-48EBF5C96079}ArbitrationForOutputData=NeverArbitrate;resource=/crio_Mod1/User LED3:0;0;ReadMethodType=u8;WriteMethodType=u8{1A52C9C8-E370-4F38-BE48-8911FAB10BC8}ArbitrationForOutputData=NeverArbitrate;resource=/crio_Mod1/User LED0;0;ReadMethodType=bool;WriteMethodType=bool{365DB134-DDA9-4EC2-B828-EB29D8349AA5}resource=/Scan Clock;0;ReadMethodType=bool{410B13F8-64FC-43DA-A1AC-B75096E11A9E}NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_Mod1/User Switch2;0;ReadMethodType=bool{5AA9FE62-818F-454D-81CC-3F892B9E4651}NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_Mod1/User Switch1;0;ReadMethodType=bool{62174879-72ED-4E81-8F01-06E4332C1DB0}resource=/System Reset;0;ReadMethodType=bool;WriteMethodType=bool{6A6887B9-4D09-4DBB-9E80-012587487D09}resource=/Chassis Temperature;0;ReadMethodType=i16{75C77AB0-04E5-483B-B844-E14F2BEDD39D}ResourceName=40 MHz Onboard Clock;TopSignalConnect=Clk40;ClockSignalName=Clk40;MinFreq=40000000.000000;MaxFreq=40000000.000000;VariableFreq=0;NomFreq=40000000.000000;PeakPeriodJitter=250.000000;MinDutyCycle=50.000000;MaxDutyCycle=50.000000;Accuracy=100.000000;RunTime=0;SpreadSpectrum=0;GenericDataHash=D41D8CD98F00B204E9800998ECF8427E;{8D355E72-96BF-4577-990A-4BEDECFCEB81}resource=/Sleep;0;ReadMethodType=bool;WriteMethodType=bool{8D810BD7-1B4D-41EB-A98F-F507704E4D8C}resource=/USER FPGA LED;0;ReadMethodType=u8;WriteMethodType=u8{B082CBD6-7403-45B7-AE43-27B294B14736}NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_Mod1/User Switch0;0;ReadMethodType=bool{B1E25414-4711-4E38-A082-BA7D247B5DE1}[crioConfig.Begin]crio.Calibration=1,crio.Location=Slot 1,crio.Type=NI 9344,cRIOModule.DIO3_0InitialDir=0,cRIOModule.DIO7_4InitialDir=1,cRIOModule.EnableDECoM=false,cRIOModule.EnableInputFifo=false,cRIOModule.EnableOutputFifo=false,cRIOModule.NumSyncRegs=11111111,cRIOModule.RsiAttributes=[crioConfig.End]{B4851CDA-471C-494B-8337-146D98731B62}ArbitrationForOutputData=NeverArbitrate;resource=/crio_Mod1/User LED2;0;ReadMethodType=bool;WriteMethodType=bool{DA81065F-2185-48E2-94D6-528C076F7D63}NumberOfSyncRegistersForReadInProject=0;resource=/USER Push Button;0;ReadMethodType=bool{EBB4106E-7923-478E-B267-ED8B81D83CB5}NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_Mod1/User Switch3;0;ReadMethodType=bool{EC5B7851-85E8-4B53-8502-8D23BD883517}ArbitrationForOutputData=NeverArbitrate;resource=/crio_Mod1/User LED3;0;ReadMethodType=bool;WriteMethodType=bool{EF5E4216-5184-4C80-A6DC-3260AF1A01DE}NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_Mod1/User Switch3:0;0;ReadMethodType=u8cRIO-9033/Clk40/falsefalseFPGA_EXECUTION_MODEFPGA_TARGETFPGA_TARGET_CLASSCRIO_9033FPGA_TARGET_FAMILYKINTEX7TARGET_TYPEFPGA</Property>
				<Property Name="configString.name" Type="Str">40 MHz Onboard ClockResourceName=40 MHz Onboard Clock;TopSignalConnect=Clk40;ClockSignalName=Clk40;MinFreq=40000000.000000;MaxFreq=40000000.000000;VariableFreq=0;NomFreq=40000000.000000;PeakPeriodJitter=250.000000;MinDutyCycle=50.000000;MaxDutyCycle=50.000000;Accuracy=100.000000;RunTime=0;SpreadSpectrum=0;GenericDataHash=D41D8CD98F00B204E9800998ECF8427E;Chassis Temperatureresource=/Chassis Temperature;0;ReadMethodType=i16cRIO-9033/Clk40/falsefalseFPGA_EXECUTION_MODEFPGA_TARGETFPGA_TARGET_CLASSCRIO_9033FPGA_TARGET_FAMILYKINTEX7TARGET_TYPEFPGALED0ArbitrationForOutputData=NeverArbitrate;resource=/crio_Mod1/User LED0;0;ReadMethodType=bool;WriteMethodType=boolLED1ArbitrationForOutputData=NeverArbitrate;resource=/crio_Mod1/User LED1;0;ReadMethodType=bool;WriteMethodType=boolLED2ArbitrationForOutputData=NeverArbitrate;resource=/crio_Mod1/User LED2;0;ReadMethodType=bool;WriteMethodType=boolLED3:0ArbitrationForOutputData=NeverArbitrate;resource=/crio_Mod1/User LED3:0;0;ReadMethodType=u8;WriteMethodType=u8LED4ArbitrationForOutputData=NeverArbitrate;resource=/crio_Mod1/User LED3;0;ReadMethodType=bool;WriteMethodType=boolMod1/User Switch0NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_Mod1/User Switch0;0;ReadMethodType=boolMod1/User Switch1NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_Mod1/User Switch1;0;ReadMethodType=boolMod1/User Switch2NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_Mod1/User Switch2;0;ReadMethodType=boolMod1/User Switch3:0NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_Mod1/User Switch3:0;0;ReadMethodType=u8Mod1/User Switch3NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_Mod1/User Switch3;0;ReadMethodType=boolMod1[crioConfig.Begin]crio.Calibration=1,crio.Location=Slot 1,crio.Type=NI 9344,cRIOModule.DIO3_0InitialDir=0,cRIOModule.DIO7_4InitialDir=1,cRIOModule.EnableDECoM=false,cRIOModule.EnableInputFifo=false,cRIOModule.EnableOutputFifo=false,cRIOModule.NumSyncRegs=11111111,cRIOModule.RsiAttributes=[crioConfig.End]Scan Clockresource=/Scan Clock;0;ReadMethodType=boolSleepresource=/Sleep;0;ReadMethodType=bool;WriteMethodType=boolSystem Resetresource=/System Reset;0;ReadMethodType=bool;WriteMethodType=boolUSER FPGA LEDresource=/USER FPGA LED;0;ReadMethodType=u8;WriteMethodType=u8USER Push ButtonNumberOfSyncRegistersForReadInProject=0;resource=/USER Push Button;0;ReadMethodType=bool</Property>
				<Property Name="NI.LV.FPGA.CompileConfigString" Type="Str">cRIO-9033/Clk40/falsefalseFPGA_EXECUTION_MODEFPGA_TARGETFPGA_TARGET_CLASSCRIO_9033FPGA_TARGET_FAMILYKINTEX7TARGET_TYPEFPGA</Property>
				<Property Name="NI.LV.FPGA.Version" Type="Int">6</Property>
				<Property Name="Resource Name" Type="Str">RIO0</Property>
				<Property Name="Target Class" Type="Str">cRIO-9033</Property>
				<Property Name="Top-Level Timing Source" Type="Str">40 MHz Onboard Clock</Property>
				<Property Name="Top-Level Timing Source Is Default" Type="Bool">true</Property>
				<Item Name="modules" Type="Folder">
					<Item Name="initLEDs.vi" Type="VI" URL="../initLEDs.vi">
						<Property Name="configString.guid" Type="Str">{0F316E43-E1A0-4FAE-9A7B-267FED9949CC}ArbitrationForOutputData=NeverArbitrate;resource=/crio_Mod1/User LED1;0;ReadMethodType=bool;WriteMethodType=bool{1272B6F0-9237-4E8B-9D0B-48EBF5C96079}ArbitrationForOutputData=NeverArbitrate;resource=/crio_Mod1/User LED3:0;0;ReadMethodType=u8;WriteMethodType=u8{1A52C9C8-E370-4F38-BE48-8911FAB10BC8}ArbitrationForOutputData=NeverArbitrate;resource=/crio_Mod1/User LED0;0;ReadMethodType=bool;WriteMethodType=bool{365DB134-DDA9-4EC2-B828-EB29D8349AA5}resource=/Scan Clock;0;ReadMethodType=bool{410B13F8-64FC-43DA-A1AC-B75096E11A9E}NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_Mod1/User Switch2;0;ReadMethodType=bool{5AA9FE62-818F-454D-81CC-3F892B9E4651}NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_Mod1/User Switch1;0;ReadMethodType=bool{62174879-72ED-4E81-8F01-06E4332C1DB0}resource=/System Reset;0;ReadMethodType=bool;WriteMethodType=bool{6A6887B9-4D09-4DBB-9E80-012587487D09}resource=/Chassis Temperature;0;ReadMethodType=i16{75C77AB0-04E5-483B-B844-E14F2BEDD39D}ResourceName=40 MHz Onboard Clock;TopSignalConnect=Clk40;ClockSignalName=Clk40;MinFreq=40000000.000000;MaxFreq=40000000.000000;VariableFreq=0;NomFreq=40000000.000000;PeakPeriodJitter=250.000000;MinDutyCycle=50.000000;MaxDutyCycle=50.000000;Accuracy=100.000000;RunTime=0;SpreadSpectrum=0;GenericDataHash=D41D8CD98F00B204E9800998ECF8427E;{8D355E72-96BF-4577-990A-4BEDECFCEB81}resource=/Sleep;0;ReadMethodType=bool;WriteMethodType=bool{8D810BD7-1B4D-41EB-A98F-F507704E4D8C}resource=/USER FPGA LED;0;ReadMethodType=u8;WriteMethodType=u8{B082CBD6-7403-45B7-AE43-27B294B14736}NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_Mod1/User Switch0;0;ReadMethodType=bool{B1E25414-4711-4E38-A082-BA7D247B5DE1}[crioConfig.Begin]crio.Calibration=1,crio.Location=Slot 1,crio.Type=NI 9344,cRIOModule.DIO3_0InitialDir=0,cRIOModule.DIO7_4InitialDir=1,cRIOModule.EnableDECoM=false,cRIOModule.EnableInputFifo=false,cRIOModule.EnableOutputFifo=false,cRIOModule.NumSyncRegs=11111111,cRIOModule.RsiAttributes=[crioConfig.End]{B4851CDA-471C-494B-8337-146D98731B62}ArbitrationForOutputData=NeverArbitrate;resource=/crio_Mod1/User LED2;0;ReadMethodType=bool;WriteMethodType=bool{DA81065F-2185-48E2-94D6-528C076F7D63}NumberOfSyncRegistersForReadInProject=0;resource=/USER Push Button;0;ReadMethodType=bool{EBB4106E-7923-478E-B267-ED8B81D83CB5}NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_Mod1/User Switch3;0;ReadMethodType=bool{EC5B7851-85E8-4B53-8502-8D23BD883517}ArbitrationForOutputData=NeverArbitrate;resource=/crio_Mod1/User LED3;0;ReadMethodType=bool;WriteMethodType=bool{EF5E4216-5184-4C80-A6DC-3260AF1A01DE}NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_Mod1/User Switch3:0;0;ReadMethodType=u8cRIO-9033/Clk40/falsefalseFPGA_EXECUTION_MODEFPGA_TARGETFPGA_TARGET_CLASSCRIO_9033FPGA_TARGET_FAMILYKINTEX7TARGET_TYPEFPGA</Property>
						<Property Name="configString.name" Type="Str">40 MHz Onboard ClockResourceName=40 MHz Onboard Clock;TopSignalConnect=Clk40;ClockSignalName=Clk40;MinFreq=40000000.000000;MaxFreq=40000000.000000;VariableFreq=0;NomFreq=40000000.000000;PeakPeriodJitter=250.000000;MinDutyCycle=50.000000;MaxDutyCycle=50.000000;Accuracy=100.000000;RunTime=0;SpreadSpectrum=0;GenericDataHash=D41D8CD98F00B204E9800998ECF8427E;Chassis Temperatureresource=/Chassis Temperature;0;ReadMethodType=i16cRIO-9033/Clk40/falsefalseFPGA_EXECUTION_MODEFPGA_TARGETFPGA_TARGET_CLASSCRIO_9033FPGA_TARGET_FAMILYKINTEX7TARGET_TYPEFPGALED0ArbitrationForOutputData=NeverArbitrate;resource=/crio_Mod1/User LED0;0;ReadMethodType=bool;WriteMethodType=boolLED1ArbitrationForOutputData=NeverArbitrate;resource=/crio_Mod1/User LED1;0;ReadMethodType=bool;WriteMethodType=boolLED2ArbitrationForOutputData=NeverArbitrate;resource=/crio_Mod1/User LED2;0;ReadMethodType=bool;WriteMethodType=boolLED3:0ArbitrationForOutputData=NeverArbitrate;resource=/crio_Mod1/User LED3:0;0;ReadMethodType=u8;WriteMethodType=u8LED4ArbitrationForOutputData=NeverArbitrate;resource=/crio_Mod1/User LED3;0;ReadMethodType=bool;WriteMethodType=boolMod1/User Switch0NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_Mod1/User Switch0;0;ReadMethodType=boolMod1/User Switch1NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_Mod1/User Switch1;0;ReadMethodType=boolMod1/User Switch2NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_Mod1/User Switch2;0;ReadMethodType=boolMod1/User Switch3:0NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_Mod1/User Switch3:0;0;ReadMethodType=u8Mod1/User Switch3NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_Mod1/User Switch3;0;ReadMethodType=boolMod1[crioConfig.Begin]crio.Calibration=1,crio.Location=Slot 1,crio.Type=NI 9344,cRIOModule.DIO3_0InitialDir=0,cRIOModule.DIO7_4InitialDir=1,cRIOModule.EnableDECoM=false,cRIOModule.EnableInputFifo=false,cRIOModule.EnableOutputFifo=false,cRIOModule.NumSyncRegs=11111111,cRIOModule.RsiAttributes=[crioConfig.End]Scan Clockresource=/Scan Clock;0;ReadMethodType=boolSleepresource=/Sleep;0;ReadMethodType=bool;WriteMethodType=boolSystem Resetresource=/System Reset;0;ReadMethodType=bool;WriteMethodType=boolUSER FPGA LEDresource=/USER FPGA LED;0;ReadMethodType=u8;WriteMethodType=u8USER Push ButtonNumberOfSyncRegistersForReadInProject=0;resource=/USER Push Button;0;ReadMethodType=bool</Property>
					</Item>
					<Item Name="LED1.vi" Type="VI" URL="../LED1.vi">
						<Property Name="configString.guid" Type="Str">{0F316E43-E1A0-4FAE-9A7B-267FED9949CC}ArbitrationForOutputData=NeverArbitrate;resource=/crio_Mod1/User LED1;0;ReadMethodType=bool;WriteMethodType=bool{1272B6F0-9237-4E8B-9D0B-48EBF5C96079}ArbitrationForOutputData=NeverArbitrate;resource=/crio_Mod1/User LED3:0;0;ReadMethodType=u8;WriteMethodType=u8{1A52C9C8-E370-4F38-BE48-8911FAB10BC8}ArbitrationForOutputData=NeverArbitrate;resource=/crio_Mod1/User LED0;0;ReadMethodType=bool;WriteMethodType=bool{365DB134-DDA9-4EC2-B828-EB29D8349AA5}resource=/Scan Clock;0;ReadMethodType=bool{410B13F8-64FC-43DA-A1AC-B75096E11A9E}NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_Mod1/User Switch2;0;ReadMethodType=bool{5AA9FE62-818F-454D-81CC-3F892B9E4651}NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_Mod1/User Switch1;0;ReadMethodType=bool{62174879-72ED-4E81-8F01-06E4332C1DB0}resource=/System Reset;0;ReadMethodType=bool;WriteMethodType=bool{6A6887B9-4D09-4DBB-9E80-012587487D09}resource=/Chassis Temperature;0;ReadMethodType=i16{75C77AB0-04E5-483B-B844-E14F2BEDD39D}ResourceName=40 MHz Onboard Clock;TopSignalConnect=Clk40;ClockSignalName=Clk40;MinFreq=40000000.000000;MaxFreq=40000000.000000;VariableFreq=0;NomFreq=40000000.000000;PeakPeriodJitter=250.000000;MinDutyCycle=50.000000;MaxDutyCycle=50.000000;Accuracy=100.000000;RunTime=0;SpreadSpectrum=0;GenericDataHash=D41D8CD98F00B204E9800998ECF8427E;{8D355E72-96BF-4577-990A-4BEDECFCEB81}resource=/Sleep;0;ReadMethodType=bool;WriteMethodType=bool{8D810BD7-1B4D-41EB-A98F-F507704E4D8C}resource=/USER FPGA LED;0;ReadMethodType=u8;WriteMethodType=u8{B082CBD6-7403-45B7-AE43-27B294B14736}NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_Mod1/User Switch0;0;ReadMethodType=bool{B1E25414-4711-4E38-A082-BA7D247B5DE1}[crioConfig.Begin]crio.Calibration=1,crio.Location=Slot 1,crio.Type=NI 9344,cRIOModule.DIO3_0InitialDir=0,cRIOModule.DIO7_4InitialDir=1,cRIOModule.EnableDECoM=false,cRIOModule.EnableInputFifo=false,cRIOModule.EnableOutputFifo=false,cRIOModule.NumSyncRegs=11111111,cRIOModule.RsiAttributes=[crioConfig.End]{B4851CDA-471C-494B-8337-146D98731B62}ArbitrationForOutputData=NeverArbitrate;resource=/crio_Mod1/User LED2;0;ReadMethodType=bool;WriteMethodType=bool{DA81065F-2185-48E2-94D6-528C076F7D63}NumberOfSyncRegistersForReadInProject=0;resource=/USER Push Button;0;ReadMethodType=bool{EBB4106E-7923-478E-B267-ED8B81D83CB5}NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_Mod1/User Switch3;0;ReadMethodType=bool{EC5B7851-85E8-4B53-8502-8D23BD883517}ArbitrationForOutputData=NeverArbitrate;resource=/crio_Mod1/User LED3;0;ReadMethodType=bool;WriteMethodType=bool{EF5E4216-5184-4C80-A6DC-3260AF1A01DE}NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_Mod1/User Switch3:0;0;ReadMethodType=u8cRIO-9033/Clk40/falsefalseFPGA_EXECUTION_MODEFPGA_TARGETFPGA_TARGET_CLASSCRIO_9033FPGA_TARGET_FAMILYKINTEX7TARGET_TYPEFPGA</Property>
						<Property Name="configString.name" Type="Str">40 MHz Onboard ClockResourceName=40 MHz Onboard Clock;TopSignalConnect=Clk40;ClockSignalName=Clk40;MinFreq=40000000.000000;MaxFreq=40000000.000000;VariableFreq=0;NomFreq=40000000.000000;PeakPeriodJitter=250.000000;MinDutyCycle=50.000000;MaxDutyCycle=50.000000;Accuracy=100.000000;RunTime=0;SpreadSpectrum=0;GenericDataHash=D41D8CD98F00B204E9800998ECF8427E;Chassis Temperatureresource=/Chassis Temperature;0;ReadMethodType=i16cRIO-9033/Clk40/falsefalseFPGA_EXECUTION_MODEFPGA_TARGETFPGA_TARGET_CLASSCRIO_9033FPGA_TARGET_FAMILYKINTEX7TARGET_TYPEFPGALED0ArbitrationForOutputData=NeverArbitrate;resource=/crio_Mod1/User LED0;0;ReadMethodType=bool;WriteMethodType=boolLED1ArbitrationForOutputData=NeverArbitrate;resource=/crio_Mod1/User LED1;0;ReadMethodType=bool;WriteMethodType=boolLED2ArbitrationForOutputData=NeverArbitrate;resource=/crio_Mod1/User LED2;0;ReadMethodType=bool;WriteMethodType=boolLED3:0ArbitrationForOutputData=NeverArbitrate;resource=/crio_Mod1/User LED3:0;0;ReadMethodType=u8;WriteMethodType=u8LED4ArbitrationForOutputData=NeverArbitrate;resource=/crio_Mod1/User LED3;0;ReadMethodType=bool;WriteMethodType=boolMod1/User Switch0NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_Mod1/User Switch0;0;ReadMethodType=boolMod1/User Switch1NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_Mod1/User Switch1;0;ReadMethodType=boolMod1/User Switch2NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_Mod1/User Switch2;0;ReadMethodType=boolMod1/User Switch3:0NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_Mod1/User Switch3:0;0;ReadMethodType=u8Mod1/User Switch3NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_Mod1/User Switch3;0;ReadMethodType=boolMod1[crioConfig.Begin]crio.Calibration=1,crio.Location=Slot 1,crio.Type=NI 9344,cRIOModule.DIO3_0InitialDir=0,cRIOModule.DIO7_4InitialDir=1,cRIOModule.EnableDECoM=false,cRIOModule.EnableInputFifo=false,cRIOModule.EnableOutputFifo=false,cRIOModule.NumSyncRegs=11111111,cRIOModule.RsiAttributes=[crioConfig.End]Scan Clockresource=/Scan Clock;0;ReadMethodType=boolSleepresource=/Sleep;0;ReadMethodType=bool;WriteMethodType=boolSystem Resetresource=/System Reset;0;ReadMethodType=bool;WriteMethodType=boolUSER FPGA LEDresource=/USER FPGA LED;0;ReadMethodType=u8;WriteMethodType=u8USER Push ButtonNumberOfSyncRegistersForReadInProject=0;resource=/USER Push Button;0;ReadMethodType=bool</Property>
					</Item>
					<Item Name="LED0.vi" Type="VI" URL="../LED0.vi">
						<Property Name="configString.guid" Type="Str">{0F316E43-E1A0-4FAE-9A7B-267FED9949CC}ArbitrationForOutputData=NeverArbitrate;resource=/crio_Mod1/User LED1;0;ReadMethodType=bool;WriteMethodType=bool{1272B6F0-9237-4E8B-9D0B-48EBF5C96079}ArbitrationForOutputData=NeverArbitrate;resource=/crio_Mod1/User LED3:0;0;ReadMethodType=u8;WriteMethodType=u8{1A52C9C8-E370-4F38-BE48-8911FAB10BC8}ArbitrationForOutputData=NeverArbitrate;resource=/crio_Mod1/User LED0;0;ReadMethodType=bool;WriteMethodType=bool{365DB134-DDA9-4EC2-B828-EB29D8349AA5}resource=/Scan Clock;0;ReadMethodType=bool{410B13F8-64FC-43DA-A1AC-B75096E11A9E}NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_Mod1/User Switch2;0;ReadMethodType=bool{5AA9FE62-818F-454D-81CC-3F892B9E4651}NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_Mod1/User Switch1;0;ReadMethodType=bool{62174879-72ED-4E81-8F01-06E4332C1DB0}resource=/System Reset;0;ReadMethodType=bool;WriteMethodType=bool{6A6887B9-4D09-4DBB-9E80-012587487D09}resource=/Chassis Temperature;0;ReadMethodType=i16{75C77AB0-04E5-483B-B844-E14F2BEDD39D}ResourceName=40 MHz Onboard Clock;TopSignalConnect=Clk40;ClockSignalName=Clk40;MinFreq=40000000.000000;MaxFreq=40000000.000000;VariableFreq=0;NomFreq=40000000.000000;PeakPeriodJitter=250.000000;MinDutyCycle=50.000000;MaxDutyCycle=50.000000;Accuracy=100.000000;RunTime=0;SpreadSpectrum=0;GenericDataHash=D41D8CD98F00B204E9800998ECF8427E;{8D355E72-96BF-4577-990A-4BEDECFCEB81}resource=/Sleep;0;ReadMethodType=bool;WriteMethodType=bool{8D810BD7-1B4D-41EB-A98F-F507704E4D8C}resource=/USER FPGA LED;0;ReadMethodType=u8;WriteMethodType=u8{B082CBD6-7403-45B7-AE43-27B294B14736}NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_Mod1/User Switch0;0;ReadMethodType=bool{B1E25414-4711-4E38-A082-BA7D247B5DE1}[crioConfig.Begin]crio.Calibration=1,crio.Location=Slot 1,crio.Type=NI 9344,cRIOModule.DIO3_0InitialDir=0,cRIOModule.DIO7_4InitialDir=1,cRIOModule.EnableDECoM=false,cRIOModule.EnableInputFifo=false,cRIOModule.EnableOutputFifo=false,cRIOModule.NumSyncRegs=11111111,cRIOModule.RsiAttributes=[crioConfig.End]{B4851CDA-471C-494B-8337-146D98731B62}ArbitrationForOutputData=NeverArbitrate;resource=/crio_Mod1/User LED2;0;ReadMethodType=bool;WriteMethodType=bool{DA81065F-2185-48E2-94D6-528C076F7D63}NumberOfSyncRegistersForReadInProject=0;resource=/USER Push Button;0;ReadMethodType=bool{EBB4106E-7923-478E-B267-ED8B81D83CB5}NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_Mod1/User Switch3;0;ReadMethodType=bool{EC5B7851-85E8-4B53-8502-8D23BD883517}ArbitrationForOutputData=NeverArbitrate;resource=/crio_Mod1/User LED3;0;ReadMethodType=bool;WriteMethodType=bool{EF5E4216-5184-4C80-A6DC-3260AF1A01DE}NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_Mod1/User Switch3:0;0;ReadMethodType=u8cRIO-9033/Clk40/falsefalseFPGA_EXECUTION_MODEFPGA_TARGETFPGA_TARGET_CLASSCRIO_9033FPGA_TARGET_FAMILYKINTEX7TARGET_TYPEFPGA</Property>
						<Property Name="configString.name" Type="Str">40 MHz Onboard ClockResourceName=40 MHz Onboard Clock;TopSignalConnect=Clk40;ClockSignalName=Clk40;MinFreq=40000000.000000;MaxFreq=40000000.000000;VariableFreq=0;NomFreq=40000000.000000;PeakPeriodJitter=250.000000;MinDutyCycle=50.000000;MaxDutyCycle=50.000000;Accuracy=100.000000;RunTime=0;SpreadSpectrum=0;GenericDataHash=D41D8CD98F00B204E9800998ECF8427E;Chassis Temperatureresource=/Chassis Temperature;0;ReadMethodType=i16cRIO-9033/Clk40/falsefalseFPGA_EXECUTION_MODEFPGA_TARGETFPGA_TARGET_CLASSCRIO_9033FPGA_TARGET_FAMILYKINTEX7TARGET_TYPEFPGALED0ArbitrationForOutputData=NeverArbitrate;resource=/crio_Mod1/User LED0;0;ReadMethodType=bool;WriteMethodType=boolLED1ArbitrationForOutputData=NeverArbitrate;resource=/crio_Mod1/User LED1;0;ReadMethodType=bool;WriteMethodType=boolLED2ArbitrationForOutputData=NeverArbitrate;resource=/crio_Mod1/User LED2;0;ReadMethodType=bool;WriteMethodType=boolLED3:0ArbitrationForOutputData=NeverArbitrate;resource=/crio_Mod1/User LED3:0;0;ReadMethodType=u8;WriteMethodType=u8LED4ArbitrationForOutputData=NeverArbitrate;resource=/crio_Mod1/User LED3;0;ReadMethodType=bool;WriteMethodType=boolMod1/User Switch0NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_Mod1/User Switch0;0;ReadMethodType=boolMod1/User Switch1NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_Mod1/User Switch1;0;ReadMethodType=boolMod1/User Switch2NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_Mod1/User Switch2;0;ReadMethodType=boolMod1/User Switch3:0NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_Mod1/User Switch3:0;0;ReadMethodType=u8Mod1/User Switch3NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_Mod1/User Switch3;0;ReadMethodType=boolMod1[crioConfig.Begin]crio.Calibration=1,crio.Location=Slot 1,crio.Type=NI 9344,cRIOModule.DIO3_0InitialDir=0,cRIOModule.DIO7_4InitialDir=1,cRIOModule.EnableDECoM=false,cRIOModule.EnableInputFifo=false,cRIOModule.EnableOutputFifo=false,cRIOModule.NumSyncRegs=11111111,cRIOModule.RsiAttributes=[crioConfig.End]Scan Clockresource=/Scan Clock;0;ReadMethodType=boolSleepresource=/Sleep;0;ReadMethodType=bool;WriteMethodType=boolSystem Resetresource=/System Reset;0;ReadMethodType=bool;WriteMethodType=boolUSER FPGA LEDresource=/USER FPGA LED;0;ReadMethodType=u8;WriteMethodType=u8USER Push ButtonNumberOfSyncRegistersForReadInProject=0;resource=/USER Push Button;0;ReadMethodType=bool</Property>
						<Property Name="NI.LV.FPGA.InterfaceBitfile" Type="Str">C:\github\crio_led\src\LabVIEW\FPGA Bitfiles\crioled_FPGATarget_FPGAcode_Kx1RHjfskew.lvbitx</Property>
					</Item>
				</Item>
				<Item Name="Chassis I/O" Type="Folder">
					<Item Name="Chassis Temperature" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/Chassis Temperature</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{6A6887B9-4D09-4DBB-9E80-012587487D09}</Property>
					</Item>
					<Item Name="Sleep" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/Sleep</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{8D355E72-96BF-4577-990A-4BEDECFCEB81}</Property>
					</Item>
					<Item Name="System Reset" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/System Reset</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{62174879-72ED-4E81-8F01-06E4332C1DB0}</Property>
					</Item>
					<Item Name="USER FPGA LED" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/USER FPGA LED</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{8D810BD7-1B4D-41EB-A98F-F507704E4D8C}</Property>
					</Item>
					<Item Name="USER Push Button" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>0</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/USER Push Button</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{DA81065F-2185-48E2-94D6-528C076F7D63}</Property>
					</Item>
					<Item Name="Scan Clock" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/Scan Clock</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{365DB134-DDA9-4EC2-B828-EB29D8349AA5}</Property>
					</Item>
				</Item>
				<Item Name="Mod1" Type="Folder">
					<Item Name="Mod1/User Switch0" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/crio_Mod1/User Switch0</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{B082CBD6-7403-45B7-AE43-27B294B14736}</Property>
					</Item>
					<Item Name="Mod1/User Switch1" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/crio_Mod1/User Switch1</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{5AA9FE62-818F-454D-81CC-3F892B9E4651}</Property>
					</Item>
					<Item Name="Mod1/User Switch2" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/crio_Mod1/User Switch2</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{410B13F8-64FC-43DA-A1AC-B75096E11A9E}</Property>
					</Item>
					<Item Name="Mod1/User Switch3" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/crio_Mod1/User Switch3</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{EBB4106E-7923-478E-B267-ED8B81D83CB5}</Property>
					</Item>
					<Item Name="Mod1/User Switch3:0" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/crio_Mod1/User Switch3:0</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{EF5E4216-5184-4C80-A6DC-3260AF1A01DE}</Property>
					</Item>
					<Item Name="LED0" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/crio_Mod1/User LED0</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{1A52C9C8-E370-4F38-BE48-8911FAB10BC8}</Property>
					</Item>
					<Item Name="LED1" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/crio_Mod1/User LED1</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{0F316E43-E1A0-4FAE-9A7B-267FED9949CC}</Property>
					</Item>
					<Item Name="LED2" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/crio_Mod1/User LED2</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{B4851CDA-471C-494B-8337-146D98731B62}</Property>
					</Item>
					<Item Name="LED4" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/crio_Mod1/User LED3</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{EC5B7851-85E8-4B53-8502-8D23BD883517}</Property>
					</Item>
					<Item Name="LED3:0" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/crio_Mod1/User LED3:0</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{1272B6F0-9237-4E8B-9D0B-48EBF5C96079}</Property>
					</Item>
				</Item>
				<Item Name="40 MHz Onboard Clock" Type="FPGA Base Clock">
					<Property Name="FPGA.PersistentID" Type="Str">{75C77AB0-04E5-483B-B844-E14F2BEDD39D}</Property>
					<Property Name="NI.LV.FPGA.BaseTSConfig" Type="Str">ResourceName=40 MHz Onboard Clock;TopSignalConnect=Clk40;ClockSignalName=Clk40;MinFreq=40000000.000000;MaxFreq=40000000.000000;VariableFreq=0;NomFreq=40000000.000000;PeakPeriodJitter=250.000000;MinDutyCycle=50.000000;MaxDutyCycle=50.000000;Accuracy=100.000000;RunTime=0;SpreadSpectrum=0;GenericDataHash=D41D8CD98F00B204E9800998ECF8427E;</Property>
					<Property Name="NI.LV.FPGA.BaseTSConfig.Accuracy" Type="Dbl">100</Property>
					<Property Name="NI.LV.FPGA.BaseTSConfig.ClockSignalName" Type="Str">Clk40</Property>
					<Property Name="NI.LV.FPGA.BaseTSConfig.MaxDutyCycle" Type="Dbl">50</Property>
					<Property Name="NI.LV.FPGA.BaseTSConfig.MaxFrequency" Type="Dbl">40000000</Property>
					<Property Name="NI.LV.FPGA.BaseTSConfig.MinDutyCycle" Type="Dbl">50</Property>
					<Property Name="NI.LV.FPGA.BaseTSConfig.MinFrequency" Type="Dbl">40000000</Property>
					<Property Name="NI.LV.FPGA.BaseTSConfig.NominalFrequency" Type="Dbl">40000000</Property>
					<Property Name="NI.LV.FPGA.BaseTSConfig.PeakPeriodJitter" Type="Dbl">250</Property>
					<Property Name="NI.LV.FPGA.BaseTSConfig.ResourceName" Type="Str">40 MHz Onboard Clock</Property>
					<Property Name="NI.LV.FPGA.BaseTSConfig.SupportAndRequireRuntimeEnableDisable" Type="Bool">false</Property>
					<Property Name="NI.LV.FPGA.BaseTSConfig.TopSignalConnect" Type="Str">Clk40</Property>
					<Property Name="NI.LV.FPGA.BaseTSConfig.VariableFrequency" Type="Bool">false</Property>
					<Property Name="NI.LV.FPGA.Valid" Type="Bool">true</Property>
					<Property Name="NI.LV.FPGA.Version" Type="Int">5</Property>
				</Item>
				<Item Name="Mod1" Type="RIO C Series Module">
					<Property Name="crio.Calibration" Type="Str">1</Property>
					<Property Name="crio.Location" Type="Str">Slot 1</Property>
					<Property Name="crio.RequiresValidation" Type="Bool">false</Property>
					<Property Name="crio.SDcounterSlaveChannelMask" Type="Str">0</Property>
					<Property Name="crio.SDCounterSlaveMasterSlot" Type="Str">0</Property>
					<Property Name="crio.SDInputFilter" Type="Str">128</Property>
					<Property Name="crio.SupportsDynamicRes" Type="Bool">false</Property>
					<Property Name="crio.Type" Type="Str">NI 9344</Property>
					<Property Name="cRIOModule.DigitalIOMode" Type="Str">0</Property>
					<Property Name="cRIOModule.DIO3_0InitialDir" Type="Str">0</Property>
					<Property Name="cRIOModule.DIO7_4InitialDir" Type="Str">1</Property>
					<Property Name="cRIOModule.EnableSpecialtyDigital" Type="Str">false</Property>
					<Property Name="cRIOModule.NumSyncRegs" Type="Str">11111111</Property>
					<Property Name="FPGA.PersistentID" Type="Str">{B1E25414-4711-4E38-A082-BA7D247B5DE1}</Property>
				</Item>
				<Item Name="mainFPGA.vi" Type="VI" URL="../mainFPGA.vi">
					<Property Name="configString.guid" Type="Str">{0F316E43-E1A0-4FAE-9A7B-267FED9949CC}ArbitrationForOutputData=NeverArbitrate;resource=/crio_Mod1/User LED1;0;ReadMethodType=bool;WriteMethodType=bool{1272B6F0-9237-4E8B-9D0B-48EBF5C96079}ArbitrationForOutputData=NeverArbitrate;resource=/crio_Mod1/User LED3:0;0;ReadMethodType=u8;WriteMethodType=u8{1A52C9C8-E370-4F38-BE48-8911FAB10BC8}ArbitrationForOutputData=NeverArbitrate;resource=/crio_Mod1/User LED0;0;ReadMethodType=bool;WriteMethodType=bool{365DB134-DDA9-4EC2-B828-EB29D8349AA5}resource=/Scan Clock;0;ReadMethodType=bool{410B13F8-64FC-43DA-A1AC-B75096E11A9E}NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_Mod1/User Switch2;0;ReadMethodType=bool{5AA9FE62-818F-454D-81CC-3F892B9E4651}NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_Mod1/User Switch1;0;ReadMethodType=bool{62174879-72ED-4E81-8F01-06E4332C1DB0}resource=/System Reset;0;ReadMethodType=bool;WriteMethodType=bool{6A6887B9-4D09-4DBB-9E80-012587487D09}resource=/Chassis Temperature;0;ReadMethodType=i16{75C77AB0-04E5-483B-B844-E14F2BEDD39D}ResourceName=40 MHz Onboard Clock;TopSignalConnect=Clk40;ClockSignalName=Clk40;MinFreq=40000000.000000;MaxFreq=40000000.000000;VariableFreq=0;NomFreq=40000000.000000;PeakPeriodJitter=250.000000;MinDutyCycle=50.000000;MaxDutyCycle=50.000000;Accuracy=100.000000;RunTime=0;SpreadSpectrum=0;GenericDataHash=D41D8CD98F00B204E9800998ECF8427E;{8D355E72-96BF-4577-990A-4BEDECFCEB81}resource=/Sleep;0;ReadMethodType=bool;WriteMethodType=bool{8D810BD7-1B4D-41EB-A98F-F507704E4D8C}resource=/USER FPGA LED;0;ReadMethodType=u8;WriteMethodType=u8{B082CBD6-7403-45B7-AE43-27B294B14736}NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_Mod1/User Switch0;0;ReadMethodType=bool{B1E25414-4711-4E38-A082-BA7D247B5DE1}[crioConfig.Begin]crio.Calibration=1,crio.Location=Slot 1,crio.Type=NI 9344,cRIOModule.DIO3_0InitialDir=0,cRIOModule.DIO7_4InitialDir=1,cRIOModule.EnableDECoM=false,cRIOModule.EnableInputFifo=false,cRIOModule.EnableOutputFifo=false,cRIOModule.NumSyncRegs=11111111,cRIOModule.RsiAttributes=[crioConfig.End]{B4851CDA-471C-494B-8337-146D98731B62}ArbitrationForOutputData=NeverArbitrate;resource=/crio_Mod1/User LED2;0;ReadMethodType=bool;WriteMethodType=bool{DA81065F-2185-48E2-94D6-528C076F7D63}NumberOfSyncRegistersForReadInProject=0;resource=/USER Push Button;0;ReadMethodType=bool{EBB4106E-7923-478E-B267-ED8B81D83CB5}NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_Mod1/User Switch3;0;ReadMethodType=bool{EC5B7851-85E8-4B53-8502-8D23BD883517}ArbitrationForOutputData=NeverArbitrate;resource=/crio_Mod1/User LED3;0;ReadMethodType=bool;WriteMethodType=bool{EF5E4216-5184-4C80-A6DC-3260AF1A01DE}NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_Mod1/User Switch3:0;0;ReadMethodType=u8cRIO-9033/Clk40/falsefalseFPGA_EXECUTION_MODEFPGA_TARGETFPGA_TARGET_CLASSCRIO_9033FPGA_TARGET_FAMILYKINTEX7TARGET_TYPEFPGA</Property>
					<Property Name="configString.name" Type="Str">40 MHz Onboard ClockResourceName=40 MHz Onboard Clock;TopSignalConnect=Clk40;ClockSignalName=Clk40;MinFreq=40000000.000000;MaxFreq=40000000.000000;VariableFreq=0;NomFreq=40000000.000000;PeakPeriodJitter=250.000000;MinDutyCycle=50.000000;MaxDutyCycle=50.000000;Accuracy=100.000000;RunTime=0;SpreadSpectrum=0;GenericDataHash=D41D8CD98F00B204E9800998ECF8427E;Chassis Temperatureresource=/Chassis Temperature;0;ReadMethodType=i16cRIO-9033/Clk40/falsefalseFPGA_EXECUTION_MODEFPGA_TARGETFPGA_TARGET_CLASSCRIO_9033FPGA_TARGET_FAMILYKINTEX7TARGET_TYPEFPGALED0ArbitrationForOutputData=NeverArbitrate;resource=/crio_Mod1/User LED0;0;ReadMethodType=bool;WriteMethodType=boolLED1ArbitrationForOutputData=NeverArbitrate;resource=/crio_Mod1/User LED1;0;ReadMethodType=bool;WriteMethodType=boolLED2ArbitrationForOutputData=NeverArbitrate;resource=/crio_Mod1/User LED2;0;ReadMethodType=bool;WriteMethodType=boolLED3:0ArbitrationForOutputData=NeverArbitrate;resource=/crio_Mod1/User LED3:0;0;ReadMethodType=u8;WriteMethodType=u8LED4ArbitrationForOutputData=NeverArbitrate;resource=/crio_Mod1/User LED3;0;ReadMethodType=bool;WriteMethodType=boolMod1/User Switch0NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_Mod1/User Switch0;0;ReadMethodType=boolMod1/User Switch1NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_Mod1/User Switch1;0;ReadMethodType=boolMod1/User Switch2NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_Mod1/User Switch2;0;ReadMethodType=boolMod1/User Switch3:0NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_Mod1/User Switch3:0;0;ReadMethodType=u8Mod1/User Switch3NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_Mod1/User Switch3;0;ReadMethodType=boolMod1[crioConfig.Begin]crio.Calibration=1,crio.Location=Slot 1,crio.Type=NI 9344,cRIOModule.DIO3_0InitialDir=0,cRIOModule.DIO7_4InitialDir=1,cRIOModule.EnableDECoM=false,cRIOModule.EnableInputFifo=false,cRIOModule.EnableOutputFifo=false,cRIOModule.NumSyncRegs=11111111,cRIOModule.RsiAttributes=[crioConfig.End]Scan Clockresource=/Scan Clock;0;ReadMethodType=boolSleepresource=/Sleep;0;ReadMethodType=bool;WriteMethodType=boolSystem Resetresource=/System Reset;0;ReadMethodType=bool;WriteMethodType=boolUSER FPGA LEDresource=/USER FPGA LED;0;ReadMethodType=u8;WriteMethodType=u8USER Push ButtonNumberOfSyncRegistersForReadInProject=0;resource=/USER Push Button;0;ReadMethodType=bool</Property>
					<Property Name="NI.LV.FPGA.InterfaceBitfile" Type="Str">C:\github\crio_led\src\LabVIEW\FPGA Bitfiles\crioled_FPGATarget_mainFPGA_6UdiR6d+YoI.lvbitx</Property>
				</Item>
				<Item Name="Dependencies" Type="Dependencies"/>
				<Item Name="Build Specifications" Type="Build">
					<Item Name="FPGAcode" Type="{F4C5E96F-7410-48A5-BB87-3559BC9B167F}">
						<Property Name="AllowEnableRemoval" Type="Bool">false</Property>
						<Property Name="BuildSpecDecription" Type="Str"></Property>
						<Property Name="BuildSpecName" Type="Str">FPGAcode</Property>
						<Property Name="Comp.BitfileName" Type="Str">crioled_FPGATarget_FPGAcode_Kx1RHjfskew.lvbitx</Property>
						<Property Name="Comp.CustomXilinxParameters" Type="Str"></Property>
						<Property Name="Comp.MaxFanout" Type="Int">-1</Property>
						<Property Name="Comp.RandomSeed" Type="Bool">false</Property>
						<Property Name="Comp.Version.Build" Type="Int">0</Property>
						<Property Name="Comp.Version.Fix" Type="Int">0</Property>
						<Property Name="Comp.Version.Major" Type="Int">1</Property>
						<Property Name="Comp.Version.Minor" Type="Int">0</Property>
						<Property Name="Comp.VersionAutoIncrement" Type="Bool">false</Property>
						<Property Name="Comp.Vivado.EnableMultiThreading" Type="Bool">true</Property>
						<Property Name="Comp.Vivado.OptDirective" Type="Str"></Property>
						<Property Name="Comp.Vivado.PhysOptDirective" Type="Str"></Property>
						<Property Name="Comp.Vivado.PlaceDirective" Type="Str"></Property>
						<Property Name="Comp.Vivado.RouteDirective" Type="Str"></Property>
						<Property Name="Comp.Vivado.RunPowerOpt" Type="Bool">false</Property>
						<Property Name="Comp.Vivado.Strategy" Type="Str">Default</Property>
						<Property Name="Comp.Xilinx.DesignStrategy" Type="Str">balanced</Property>
						<Property Name="Comp.Xilinx.MapEffort" Type="Str">default(noTiming)</Property>
						<Property Name="Comp.Xilinx.ParEffort" Type="Str">standard</Property>
						<Property Name="Comp.Xilinx.SynthEffort" Type="Str">normal</Property>
						<Property Name="Comp.Xilinx.SynthGoal" Type="Str">speed</Property>
						<Property Name="Comp.Xilinx.UseRecommended" Type="Bool">true</Property>
						<Property Name="DefaultBuildSpec" Type="Bool">true</Property>
						<Property Name="DestinationDirectory" Type="Path">FPGA Bitfiles</Property>
						<Property Name="NI.LV.FPGA.LastCompiledBitfilePath" Type="Path">/C/github/crio_led/src/LabVIEW/FPGA Bitfiles/crioled_FPGATarget_FPGAcode_Kx1RHjfskew.lvbitx</Property>
						<Property Name="NI.LV.FPGA.LastCompiledBitfilePathRelativeToProject" Type="Path">FPGA Bitfiles/crioled_FPGATarget_FPGAcode_Kx1RHjfskew.lvbitx</Property>
						<Property Name="ProjectPath" Type="Path">/C/github/crio_led/src/LabVIEW/crio_led.lvproj</Property>
						<Property Name="RelativePath" Type="Bool">true</Property>
						<Property Name="RunWhenLoaded" Type="Bool">false</Property>
						<Property Name="SupportDownload" Type="Bool">true</Property>
						<Property Name="SupportResourceEstimation" Type="Bool">false</Property>
						<Property Name="TargetName" Type="Str">FPGA Target</Property>
						<Property Name="TopLevelVI" Type="Ref">/RT CompactRIO Target/Chassis/FPGA Target/modules/LED0.vi</Property>
					</Item>
					<Item Name="mainFPGA" Type="{F4C5E96F-7410-48A5-BB87-3559BC9B167F}">
						<Property Name="AllowEnableRemoval" Type="Bool">false</Property>
						<Property Name="BuildSpecDecription" Type="Str"></Property>
						<Property Name="BuildSpecName" Type="Str">mainFPGA</Property>
						<Property Name="Comp.BitfileName" Type="Str">crioled_FPGATarget_mainFPGA_6UdiR6d+YoI.lvbitx</Property>
						<Property Name="Comp.CustomXilinxParameters" Type="Str"></Property>
						<Property Name="Comp.MaxFanout" Type="Int">-1</Property>
						<Property Name="Comp.RandomSeed" Type="Bool">false</Property>
						<Property Name="Comp.Version.Build" Type="Int">0</Property>
						<Property Name="Comp.Version.Fix" Type="Int">0</Property>
						<Property Name="Comp.Version.Major" Type="Int">1</Property>
						<Property Name="Comp.Version.Minor" Type="Int">0</Property>
						<Property Name="Comp.VersionAutoIncrement" Type="Bool">false</Property>
						<Property Name="Comp.Vivado.EnableMultiThreading" Type="Bool">true</Property>
						<Property Name="Comp.Vivado.OptDirective" Type="Str"></Property>
						<Property Name="Comp.Vivado.PhysOptDirective" Type="Str"></Property>
						<Property Name="Comp.Vivado.PlaceDirective" Type="Str"></Property>
						<Property Name="Comp.Vivado.RouteDirective" Type="Str"></Property>
						<Property Name="Comp.Vivado.RunPowerOpt" Type="Bool">false</Property>
						<Property Name="Comp.Vivado.Strategy" Type="Str">Default</Property>
						<Property Name="Comp.Xilinx.DesignStrategy" Type="Str">balanced</Property>
						<Property Name="Comp.Xilinx.MapEffort" Type="Str">default(noTiming)</Property>
						<Property Name="Comp.Xilinx.ParEffort" Type="Str">standard</Property>
						<Property Name="Comp.Xilinx.SynthEffort" Type="Str">normal</Property>
						<Property Name="Comp.Xilinx.SynthGoal" Type="Str">speed</Property>
						<Property Name="Comp.Xilinx.UseRecommended" Type="Bool">true</Property>
						<Property Name="DefaultBuildSpec" Type="Bool">true</Property>
						<Property Name="DestinationDirectory" Type="Path">FPGA Bitfiles</Property>
						<Property Name="NI.LV.FPGA.LastCompiledBitfilePath" Type="Path">/C/github/crio_led/src/LabVIEW/FPGA Bitfiles/crioled_FPGATarget_mainFPGA_6UdiR6d+YoI.lvbitx</Property>
						<Property Name="NI.LV.FPGA.LastCompiledBitfilePathRelativeToProject" Type="Path">FPGA Bitfiles/crioled_FPGATarget_mainFPGA_6UdiR6d+YoI.lvbitx</Property>
						<Property Name="ProjectPath" Type="Path">/C/github/crio_led/src/LabVIEW/crio_led.lvproj</Property>
						<Property Name="RelativePath" Type="Bool">true</Property>
						<Property Name="RunWhenLoaded" Type="Bool">false</Property>
						<Property Name="SupportDownload" Type="Bool">true</Property>
						<Property Name="SupportResourceEstimation" Type="Bool">false</Property>
						<Property Name="TargetName" Type="Str">FPGA Target</Property>
						<Property Name="TopLevelVI" Type="Ref">/RT CompactRIO Target/Chassis/FPGA Target/mainFPGA.vi</Property>
					</Item>
				</Item>
			</Item>
		</Item>
		<Item Name="Dependencies" Type="Dependencies"/>
		<Item Name="Build Specifications" Type="Build"/>
	</Item>
</Project>
