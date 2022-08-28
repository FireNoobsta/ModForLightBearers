@ECHO OFF
ECHO Welcome to the LightBearers mod installer!
ECHO Make sure you have read the README file first.
ECHO First type the filepath for the pak file of LightBearers, it should be called "LightBearers-WindowsNoEditor.pak"
ECHO (WARNING: This file will be deleted so make sure it is the right file!)
set /p PAKFILEPATH="LightBearers Pakfile path: "

ECHO Now type the filepath for the unrealpak.exe file in your installation of unreal engine.
set /p UNREALPAKPATH="Unrealpak.exe path: "

::Setting up the dataToPack file
chdir> temp.txt
set /p CurrDir=<temp.txt
echo ^"%CurrDir%\ModFiles\Extract\Engine\*^" ^"../../../Engine/^"> .\ModFiles\dataToPack.txt
echo ^"%CurrDir%\ModFiles\Extract\LightBearers\*^" ^"../../../LightBearers/^">> .\ModFiles\dataToPack.txt


::Extracting the pak file
%UNREALPAKPATH% %PAKFILEPATH% -Extract %CurrDir%\ModFiles\Extract

ECHO You should have seen a lot of lines saying extractions were made.
ECHO If not then an error occurred and you should close the program now. Otherwise continue
PAUSE

::Replacing files in Extract
del %CurrDir%\ModFiles\Extract\LightBearers\Config\DefaultInput.ini
copy %CurrDir%\ModFiles\DefaultInput.ini %CurrDir%\ModFiles\Extract\LightBearers\Config

del %CurrDir%\ModFiles\Extract\LightBearers\Content\StarterContent\Maps\Advanced_Lighting.uexp
copy %CurrDir%\ModFiles\Advanced_Lighting.uexp %CurrDir%\ModFiles\Extract\LightBearers\Content\StarterContent\Maps

del %CurrDir%\ModFiles\Extract\LightBearers\Content\StarterContent\Maps\Advanced_Lighting.umap
copy %CurrDir%\ModFiles\Advanced_Lighting.umap %CurrDir%\ModFiles\Extract\LightBearers\Content\StarterContent\Maps

del %CurrDir%\ModFiles\Extract\LightBearers\Content\StarterContent\Maps\Advanced_Lighting_BuiltData.uasset
copy %CurrDir%\ModFiles\Advanced_Lighting_BuiltData.uasset %CurrDir%\ModFiles\Extract\LightBearers\Content\StarterContent\Maps

del %CurrDir%\ModFiles\Extract\LightBearers\Content\StarterContent\Maps\Advanced_Lighting_BuiltData.ubulk
copy %CurrDir%\ModFiles\Advanced_Lighting_BuiltData.ubulk %CurrDir%\ModFiles\Extract\LightBearers\Content\StarterContent\Maps

del %CurrDir%\ModFiles\Extract\LightBearers\Content\StarterContent\Maps\Advanced_Lighting_BuiltData.uexp
copy %CurrDir%\ModFiles\Advanced_Lighting_BuiltData.uexp %CurrDir%\ModFiles\Extract\LightBearers\Content\StarterContent\Maps



del %CurrDir%\ModFiles\Extract\LightBearers\Content\StarterContent\Maps\StarterMap.uexp
copy %CurrDir%\ModFiles\StarterMap.uexp %CurrDir%\ModFiles\Extract\LightBearers\Content\StarterContent\Maps

del %CurrDir%\ModFiles\Extract\LightBearers\Content\StarterContent\Maps\StarterMap.umap
copy %CurrDir%\ModFiles\StarterMap.umap %CurrDir%\ModFiles\Extract\LightBearers\Content\StarterContent\Maps

del %CurrDir%\ModFiles\Extract\LightBearers\Content\StarterContent\Maps\StarterMap_BuiltData.uasset
copy %CurrDir%\ModFiles\StarterMap_BuiltData.uasset %CurrDir%\ModFiles\Extract\LightBearers\Content\StarterContent\Maps

del %CurrDir%\ModFiles\Extract\LightBearers\Content\StarterContent\Maps\StarterMap_BuiltData.ubulk
copy %CurrDir%\ModFiles\StarterMap_BuiltData.ubulk %CurrDir%\ModFiles\Extract\LightBearers\Content\StarterContent\Maps

del %CurrDir%\ModFiles\Extract\LightBearers\Content\StarterContent\Maps\StarterMap_BuiltData.uexp
copy %CurrDir%\ModFiles\StarterMap_BuiltData.uexp %CurrDir%\ModFiles\Extract\LightBearers\Content\StarterContent\Maps



del %CurrDir%\ModFiles\Extract\LightBearers\Content\StarterContent\Maps\Minimal_Default.uexp
copy %CurrDir%\ModFiles\Minimal_Default.uexp %CurrDir%\ModFiles\Extract\LightBearers\Content\StarterContent\Maps

del %CurrDir%\ModFiles\Extract\LightBearers\Content\StarterContent\Maps\Minimal_Default.umap
copy %CurrDir%\ModFiles\Minimal_Default.umap %CurrDir%\ModFiles\Extract\LightBearers\Content\StarterContent\Maps

del %CurrDir%\ModFiles\Extract\LightBearers\Content\StarterContent\Maps\Minimal_Default_BuiltData.uasset
copy %CurrDir%\ModFiles\Minimal_Default_BuiltData.uasset %CurrDir%\ModFiles\Extract\LightBearers\Content\StarterContent\Maps

del %CurrDir%\ModFiles\Extract\LightBearers\Content\StarterContent\Maps\Minimal_Default_BuiltData.ubulk
copy %CurrDir%\ModFiles\Minimal_Default_BuiltData.ubulk %CurrDir%\ModFiles\Extract\LightBearers\Content\StarterContent\Maps

del %CurrDir%\ModFiles\Extract\LightBearers\Content\StarterContent\Maps\Minimal_Default_BuiltData.uexp
copy %CurrDir%\ModFiles\Minimal_Default_BuiltData.uexp %CurrDir%\ModFiles\Extract\LightBearers\Content\StarterContent\Maps


::Deleting pakfile and repaking
ECHO This next part may take a while, please be patient
del %PAKFILEPATH%
%UNREALPAKPATH% %PAKFILEPATH% -Create=%CurrDir%\ModFiles\dataToPack.txt

::Deleting Extract, we don't need it anymore
::del %CurrDir%\ModFiles\Extract\Engine
::del %CurrDir%\ModFiles\Extract\LightBearers

ECHO The mod should be installed now!
ECHO Refer to the README to find the relevant console commands.
PAUSE