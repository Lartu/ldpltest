# 👷🏾 LDPL Test Battery
The LDPL Test Battery is a collection of tests and an automated tester used to
test new releases of the [LDPL programming language](https://github.com/lartu/ldpl).

## Tests used
The following tests are used to test the language:
 - **conflow.ldpl**: test basic control flow statements.
 - **basicar.ldpl**: test basic arithmetic statements.
 - **basictx.ldpl**: test basic text statements.
 - **vector.ldpl**: test vector statements.
 - **file.ldpl**: create a file, open a file, write to it, append to it, list contents of directory.
 - **fibo.ldpl**: calculate the first 50 fibonacci numbers.
 - **explode.ldpl**: splits a string.
 - **sqrt.ldpl**: calculate a square root using the Babylonian Method.
 - **quine.ldpl**: a quine program.
 - **exec.ldpl**: tests execution and system statements.
 - **list.ldpl**: test list statements.

## Statements not being tested

 - `ACCEPT`
 - `ACCEPT - UNTIL EOF`
 - `STORE RANDOM IN`
 - `WAIT - MILLINSECONDS`
 - `LIST CONTENTS OF DIRECTORY`
 - `IMPORT`
 - `EXTENSION`
 - `FLAG`
 - C++ extension compatibility.

## How to compile the tester
The tester is written in LDPL. To compile and run it you should run

`sh compileAndRunTester.sh`

preferably with a stable version of LDPL.

## How to run the tester
Run `$ ./tester`.

## Using a custom runner
By default the tester will compile and run each test with `ldpl`, but you can define your own "compile and run" process by providing a runner script with the `-r=` flag:

    ldpl tester.ldpl -o=tester
    ./tester -r=my-ldpl.sh

This would execute the `my-ldpl.sh` program once for each test file, passing the test file as the first argument. In your runner script you could, for example, build and run each test file with a development version of LDPL. Or a different compiler/interpreter entirely.
