# Tests for PPTransPOG

This directory contains tests for PPTransSmt and PPTransTPTP, namely two encoders of POG proof obligations.
The tests are conducted using CMake and CTest (<https://cmake.org/cmake/help/book/mastering-cmake/chapter/Testing%20With%20CMake%20and%20CTest.html>).

A test consists of applying an encoder to a POG file, and compare the result with a reference result.
The result is the combination of:

- the produced encoded files, if any,
- the text produced on the standard output channel
- the text produced on the standard error channel
- the exit code.

Reference results have been validated by applying tools and manual inspection.

- The validator for the TPTP output produced by the encoder PPTransTPTP is TPTP4X.
- The validator for the SMT output produced by the encoder PPTransSmt is CVC5 (<https://cvc5.github.io/>).

The POG files used to test the encoders have been produced by the bxml and pog tools distributed with Atelier B (<https://atelierb.eu>) from B source files.
Note that the source code of the bxml tool is available at <https://github.com/CLEARSY/BCOMPILER>.

The source files corresponding to the POG files are also registered in this directory.

## Receipt to create a new test

A test may be applied to both encoders or only one of them.

Assuming the test originates from a B source file, e.g., `afeature.mch`, with corresponding POG file `afeature.pog`.

1. Create a new test identifier, e.g. test42 (consult file CMakeLists.txt or directory input/).
2. Create the input test directory, e.g., `input/test42`
3. Populate the input test directories with files `afeature.mch` and `afeature.pog` in that directory.
4. Create the output reference test directories for the selected encoders, e.g., `output/test42/reference/SMT` and `output/test42/reference/TPTP`.
5. Populate the output reference test directories with the following commands, e.g.

```bash
test=test42
comp=afeature

ppTransSmt -n -i input/$test/$comp.pog -o output/$test/reference/SMT/$comp > output/$test/reference/SMT/stdout 2> output/$test/reference/SMT/stderr
echo $? > output/$test/reference/SMT/exitcode
ppTransTPTP -i input/$test/$comp.pog -o output/$test/reference/TPTP/$comp > output/$test/reference/TPTP/stdout 2> output/$test/reference/TPTP/stderr
echo $? > output/$test/reference/TPTP/exitcode
```

6. Validate the contents of the output reference test directories
7. Update file CMakeLists.txt in this directory to add the new test to the test suite.
