#!/bin/bash
read -p "Name the new plugin" pluginname
newplugin=./plugins/$pluginname
cd *wiki
mkdir $newplugin
sed s/sample-plugin/$pluginname/ ./plugins/sample-plugin/plugin.info > $newplugin/plugin.info
sed s/sample-plugin/$pluginname/ ./plugins/sample-plugin/readme.tid > $newplugin/readme.tid