#!/usr/bin/env bash
phantomjs --ignore-ssl-errors=true screenshot.js $URL $ID
ls -l
python /submit.py $ID
