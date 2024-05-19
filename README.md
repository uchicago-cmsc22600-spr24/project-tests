# Tests for CMSC 22600 Course Project

This repository contains a number of examples and tests for the course
project.

Here is a roadmap to the repository:

* `asm` -- contains a86-64 assembly code as generated by the instructor's solution

* `ast` -- contains the expected abstract-syntax trees for the examples
  and type-checker tests.

* `bind-tests` -- tests specific to Project 2.  These include tests of the
  parser (e.g., does it handle precedence and associativity correctly) and
  tests of the binding checker.

* `bind-trees` -- contains the expected bind trees for the examples and
  bind tests.

* `cfg` -- contains the expected CFG for the examples

* `cfg-sexp` -- contains the expected CFG for the examples in S-Expression form

* `cfg-tests` -- Project-5 specific tests

* `closure-tests` -- Project-4 specific tests

* `closures` -- contains the expected closure-converted simple-ast
  for the examples

* `closures-sexp` -- contains the expected closure-converted simple-ast
  for the examples in S-Expression form.

* `examples` -- contains example Ovid programs.  These are correct programs
  that should compile and run

* `free-vars` -- contains the expected free-variable information for the
  examples.

* `ll` -- contains the LLVM assem
* `parse-trees` -- contains the expected parse trees for the examples and
  bind tests.

* `scanner-tests` -- contains test files for the scanner (*i.e.*, Project 1).
  The tests that are prefixed with `p1-good` contain valid Ovid tokens, while
  those with the `p1-bad` prefix are error cases.

* `simple-ast` -- contains dumps of the Simple AST IR, both before and after
  "optimization".  The files with `.smpl` suffixes are the result of simplification
  and the files with `.opt` suffixed are the result of the default optimizations
  (just let floating).

* `simplify-tests`

* `tokens` -- contains the expected output for the `scanner-tests` inputs.

* `type-tests` -- contains test files for the type checker (*i.e.*, Project 3).
  The tests that are prefixed with `p3-good` contain valid Ovid tokens, while
  those with the `p3-bad` prefix are error cases.

