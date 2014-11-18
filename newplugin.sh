#!/bin/bash
read -p "Name the new plugin: " pluginname
pluginwiki=${pluginname}wiki
pluginfolder=$pluginwiki/plugins/$pluginname
cp -r *wiki $pluginwiki
mkdir -p $pluginfolder
for f in $(ls $pluginfolder/../sample-plugin)
do
    sed s/sample-plugin/$pluginname/ $pluginfolder/../sample-plugin/$f > $pluginfolder/$f
done
