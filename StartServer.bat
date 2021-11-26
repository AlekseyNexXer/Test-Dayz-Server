@echo off
    :: DEFINE the following variables where applicable to your install
    SET SteamLogin=anonymous
    SET DayZBranch=223350
    SET DayZServerPath="D:\DayzServer"
    SET SteamCMDPath="D:\SteamCMD"
    :: _______________________________________________________________
 
echo.
echo     Checking for DayZ server update
echo        DayZ Server Dir: %DayZServerPath%
echo        SteamCMD Dir: %SteamCMDPath%
echo.
%SteamCMDPath%\steamcmd.exe +login %SteamLogin% +force_install_dir %DayZServerPath% +"app_update %DayZBranch%" +quit
echo .
echo     Your DayZ server is up to date
 
start DayZServer_x64.exe -instanceId=1 -config=serverDZ.cfg -profiles=NexXerServer -port=2302 -cpuCount=8 -noFilePatching -dologs -adminlog -freezecheck "-mod=@Base Fortifications;@BuilderItems;@BuildEverywhere;@CF;@CJ187-Cars;@Cl0ud's Winter Gear;@Code Lock;@DayZ-Dog;@DayZ-Dog;@Dingo_Truck;@dzr_vanilla_notes;@Furniture Kits [1.0];@Mass'sManyItemOverhaul;@GAZ_Tigr;@Modular Vest System;@MoreDingo;@MuchStuffPack;@Namalsk Island;@Namalsk Survival;@Namalsk_Igloo;@PlayableGuitarWT;@RaG_Landrover_Defender_110;@RoadTrip;@Savage Snowmobiles;@EQUIPMENT SYSTEM LARGE;@SnowOverhaul;@Tactical Flava;@VPPAdminTools;@VPPNotifications;@WindstridesClothingPack" 
