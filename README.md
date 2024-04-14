# Tests for CMSC 22600 Course Project

This repository contains a number of examples and tests for the course
project.

Here is a roadmap to the repository:

* `bind-tests` -- tests specific to Project 2.  These include tests of the
  parser (e.g., does it handle precedence and associativity correctly) and
  tests of the binding checker.

* `bind-trees` -- contains the expected bind trees for the examples and
  bind tests.

* `examples` -- contains example Ovid programs.  These are correct programs
  that should compile and run

* `scanner-tests` -- contains test files for the scanner (*i.e.*, Project 1).
  The tests that are prefixed with `p1-good` contain valid Ovid tokens, while
  those with the `p1-bad` prefix are error cases.

* `tokens` -- contains the expected output for the `scanner-tests` inputs.

* `parse-trees` -- contains the expected parse trees for the examples and
  bind tests.

