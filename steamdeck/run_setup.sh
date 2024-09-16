#!/bin/bash

set -e
set -x

for f in setup/*.sh; do
	source ./$f
done
