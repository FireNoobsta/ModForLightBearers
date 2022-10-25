#-----------------------------------
# Notes
#-----------------------------------
This is a mod for the current version of LightBearers as of 10/24/2022. It also uses a windows batch script to install.
I recommend creating a copy of your entire game directory, once installed you can launch the mod from the executable in your modded game directory,
and still play vanilla by launching through steam.
To install this mod you'll need two things:
1. An installation of LightBearers (Obviously)
2. An installation of Unreal Engine version 4.26.2
It's important that you use this exact version since it is what LightBearers uses.
I can't provide a direct link for unreal engine since you have to use the Epic games laucher, but heres 
a link to download that https://www.unrealengine.com/en-US/download.
Once you have those you should be good to go. Also make sure you have enough room in your drive because this script will extract all of the game files
to this directory which is around 8-9 GB.
This mod is pretty bare bones though. Right now it will only unlock the dev console and add custom maps I made.

#----------------------------------
# Installation
#----------------------------------
Make sure you extracted the .zip file to a drive with 8-9 GB of available space.

Locate your LightBearers pakfile. It should be called LightBearers-WindowsNoEditor.pak and it is somewhere in \LightBearers\Content\Paks.
Locate your Unreal Engine Pak executable. It is called UnrealPak.exe and it is in your unreal engine installation, somewhere in Epic Games\UE_4.26\Engine\Binaries\Win64.
Have both of those  files ready in windows explorer.

Now run the batch script called InstallMOD. This will run a number of commands in cmd prompt and will ask for input.
When it asks for file paths, you can type the full file path for the file, or you can drag the file from the windows explorer to the command prompt
and it will type the full path for you. Make sure you drag the correct files though.

If you have the correct version of unreal engine then this should install the mod after a few minutes.
The extracted game files are left in the Extract folder and you can delete them to make space if you want, they are no longer needed.

#-----------------------------------
# Accessing the mod 
#-----------------------------------
This "mod" adds very little. As said before, now you will have access to the dev console with "4" in game.
Here are some useful commands:
Open <mapname>                           This will load a specified map. Look in Extract\LightBearers\Content\ThirdPersonBP\Maps for the names of maps in files.
ServerTravel <mapname>                   If you are hosting a lobby, this will load a specified map and take everyone in the server with you.

To access the custom maps type this into the console.
Open Advanced_Lighting
Open StarterMap
Open Minimal_Default




