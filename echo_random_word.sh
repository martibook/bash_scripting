#! /bin/bash

DICT_FILE=/usr/share/dict/words
sed -n "$RANDOM p" $DICT_FILE
