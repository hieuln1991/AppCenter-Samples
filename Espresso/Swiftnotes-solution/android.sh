# Setup & usage
# Step 0 Build the UITest project & generate an APK using the "Release" configuration
# Step 1 Generate an AppCenter upload command and paste it to the variable
AppCenter_Test_Command='appcenter test run espresso --app "kegr/Swiftnotes-Solution" --devices "kegr/top-4" --app-path pathToFile.apk  --test-series "master" --locale "en_US" --build-dir pathToEspressoBuildFolder'

# Step 2 Provide the (absolute or relative) path to the IPA
app_path=''

# Step 3 Provide the (absolute or relative) path to the UITest project bin folder
build_dir=''

# Step 4 run using the command "sh andriod.sh"


# Scripted logic
# Script injects app_path & build_dir and executes resulting command
AppCenter_Test_Command=${AppCenter_Test_Command/'pathToFile.apk'/$app_path}
AppCenter_Test_Command=${AppCenter_Test_Command/'pathToUITestBuildDir'/$build_dir}

# Execute injected command
eval $AppCenter_Test_Command
