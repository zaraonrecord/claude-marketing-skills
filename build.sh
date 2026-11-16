#!/bin/sh
# Rebuild dist/*.zip, one per Skill, ready to upload in Claude.
set -e
cd "$(dirname "$0")"
rm -rf dist && mkdir dist
cd skills
for d in */; do n="${d%/}"; zip -qrX "../dist/$n.zip" "$n" -x '.*'; done
zip -qrX ../dist/all-skills.zip . -x '.*'
ls ../dist | wc -l
