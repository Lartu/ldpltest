#!/usr/bin/env bash

echo "Compiling the Tester..."
ldpl tester.ldpl -o=tester
./tester
rm tester
