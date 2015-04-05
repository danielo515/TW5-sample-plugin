#!/bin/bash
# Just execute this script in from the sample-plugin folder
# It will create a new wiki-folder with a skeleton of your plugin to start with
# Then copy that folder to wherever you want to develop your new plugin
read -p "Name the new plugin: " pluginname
if [ -z "$pluginname" ]; then
    exit -1
fi
pluginwiki=${pluginname}wiki
pluginfolder=$pluginwiki/plugins/$pluginname
cp -r *wiki $pluginwiki
mkdir -p $pluginfolder
for f in $(ls $pluginfolder/../sample-plugin)
do
    sed s/sample-plugin/$pluginname/ $pluginfolder/../sample-plugin/$f > $pluginfolder/$f
done
