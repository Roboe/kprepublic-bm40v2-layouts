#! /usr/bin/env sh

for FILE in $@
do
  # HACK: tee doesn't seem to work with jq for overwriting the file
  cat $FILE | jq '.' > pretty.json
  mv pretty.json $FILE
done
