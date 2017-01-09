#!/bin/bash

sql wikidatawiki < $1.sql | tr -d '\t' > $1.txt

