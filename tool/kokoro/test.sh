#!/bin/bash


source ./tool/kokoro/setup.sh
setup

echo "kokoro test start"
./bin/plugin test

echo "kokoro test finished"

# TODO(messick): This is temporary, duplicating build.sh
echo "kokoro build start"
./bin/plugin build --channel=dev

echo "kokoro build finished"