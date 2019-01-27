#!/bin/bash
delemeter="___"
workspace="$1";
branch="$2";
commit="$3"
build_no="$4"
filename="c-$commit.b-$build_no.ipa";
filePath=$workspace/$branch/$filename;

branch=${branch//\//.};

cp $filePath ~/Site/builds/$branch$delemeter$(date +%s)$delemeter$commit$delemeter$build_no.ipa
echo "IPA file copied at path: $filePath";
