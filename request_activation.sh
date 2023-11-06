#!/usr/bin/env bash

# Request the manual activation file for activating unity personal
unity-editor -batchmode -nographics -logFile /dev/stdout -quit -createManualActivationFile

FILE_NAME=$(ls Unity_v*.alf)
FILE_PATH=$FILE_NAME

# Output the resulting file by copying
cp $FILE_NAME $HOME/$FILE_PATH

# Set resulting name as output variable
echo ::set-output name=filePath::$FILE_PATH

# Explain what to do next
echo "Upload $FILE_PATH to https://license.unity3d.com/manual"
echo "Set the contents of the resulting license file as the \$UNITY_LICENSE variabe."
