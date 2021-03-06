##########################################################################################
#
# Magisk
# by topjohnwu
# 
# This is a template zip for developers
#
##########################################################################################
##########################################################################################
# 
# Instructions:
# 
# 1. Place your files into system folder (delete the placeholder file)
# 2. Fill in your module's info into module.prop
# 3. Configure the settings in this file (common/config.sh)
# 4. For advanced features, add shell commands into the script files under common:
#    post-fs-data.sh, service.sh
# 5. For changing props, add your additional/modified props into common/system.prop
# 6. Optional. If you want to install an app in /data /app, just enable DATAAPP, create a folder with a name that invokes the app to install on the module's data/app with an apk file with the same name as your folder (delete the placeholder file )
# 
##########################################################################################

##########################################################################################
# Defines
##########################################################################################

# NOTE: This part has to be adjusted to fit your own needs

# This will be the folder name under /magisk
# This should also be the same as the id in your module.prop to prevent confusion
MODID=PurifyOSCore

# Set to true if you need to enable Magic Mount
# Most mods would like it to be enabled
AUTOMOUNT=true

# Set to true if you need to load system.prop
PROPFILE=false

# Set to true if you need post-fs-data script
POSTFSDATA=false

# Set to true if you need late_start service script
LATESTARTSERVICE=false


# Set to true if you need install app in the folder "data/app" in /data/app 
DATAAPP=true

##########################################################################################
# Installation Message
##########################################################################################

# Set what you want to show when installing your mod

print_modname() {
  ui_print "*******************************"
  ui_print "     PurifyOS      "
  ui_print "*******************************"
}

##########################################################################################
# Replace list
##########################################################################################

# List all directories you want to directly replace in the system
# By default Magisk will merge your files with the original system
# Directories listed here however, will be directly mounted to the correspond directory in the system

# You don't need to remove the example below, these values will be overwritten by your own list
# This is an example
REPLACE="
/system/app/Youtube
/system/priv-app/SystemUI
/system/priv-app/Settings
/system/framework
"

# Construct your own list here, it will overwrite the example
# !DO NOT! remove this if you don't need to replace anything, leave it empty as it is now
REPLACE="
/system/app/AndroidPay
/system/app/AntHalService
/system/app/BasicDreams
/system/app/BluetoothMidiService
/system/app/BTtestmode
/system/app/Drive   
/system/app/Calculator
/system/app/CalendarGoogle
/system/app/DivesIconPack     
/system/app/EngineeringMode 
/system/app/LogKitSdService
/system/app/EngSpecialTest 
/system/app/Hangouts 
/system/app/Maps
/system/app/Duo
/system/app/Gmail2
/system/app/Music2                
/system/app/OPBugReport_Complete
/system/app/OPBugReport_Lite
/system/app/OpenWnn
/system/app/SensorTestTool   
/system/app/OEMLogKit 
/system/app/NFCTestMode
/system/app/Photos 
/system/app/YouTube
/system/app/NVBackupUI 
/system/app/SwiftKey
/system/app/SwiftKeyFactorySettings
/system/app/Videos
/system/app/Stk  
/system/app/WifiRfTestApk
/system/app/RifonIconPack
/system/app/talkback
/system/priv-app/OPMms
/system/priv-app/Tag
/system/priv-app/Contacts 
/system/priv-app/Dialer
/system/app/Chrome
/system/app/GoogleTTS
/system/reserve/OPFilemanager
/system/reserve/OPForum
"

##########################################################################################
# Permissions
##########################################################################################

# NOTE: This part has to be adjusted to fit your own needs

set_permissions() {
  # Default permissions, don't remove them
  set_perm_recursive  $MODPATH  0  0  0755  0644

  # Only some special files require specific permissions
  # The default permissions should be good enough for most cases

  # Some templates if you have no idea what to do:

  # set_perm_recursive  <dirname>                <owner> <group> <dirpermission> <filepermission> <contexts> (default: u:object_r:system_file:s0)
  # set_perm_recursive  $MODPATH/system/lib       0       0       0755            0644

  # set_perm  <filename>                         <owner> <group> <permission> <contexts> (default: u:object_r:system_file:s0)
  # set_perm  $MODPATH/system/bin/app_process32   0       2000    0755         u:object_r:zygote_exec:s0
  # set_perm  $MODPATH/system/bin/dex2oat         0       2000    0755         u:object_r:dex2oat_exec:s0
  # set_perm  $MODPATH/system/lib/libart.so       0       0       0644
}
