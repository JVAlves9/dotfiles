#!/bin/bash

curl "https://raw.githubusercontent.com/github/linguist/master/lib/linguist/languages.yml" \ 
 | yq -r '. |= pick(["Java","Python","Markdown", "C", "Shell", "JSON", "YAML", "TOML"]) | to_entries | (map(.value.extensions) | flatten) - [null] | unique | .[]' \
 | xargs -L 1 -I "{}" duti -s com.coteditor.CotEditor {} all
