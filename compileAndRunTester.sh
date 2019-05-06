#!/usr/bin/env bash

echo "Compiling the Tester..."
${LDPLBIN:-ldpl} tester.ldpl -o=tester > /dev/null 2>&1
./tester
rm tester
