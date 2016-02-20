# Logtalk Test Runner


## Description

A simple implementation in logtalk of a runner object running all registered test suites


## Usage

Simply run all loaded lgtunit test suites :

    test_runner::autoregister_tests, % register all loaded lgtunit objects
    test_runner::run_tests.

Or Manually registered test suites you want to run :

    test_runner::register_tests(test_suite_obj1),
    test_runner::register_tests(test_suite_obj2),
    test_runner::run_tests. %run the 2 test suites

 Or :

    test_runner::autoregister_tests,
    test_runner::unregister_tests(test_suite_obj2),
    test_runner::run_tests. % run all test suites except test_suite_obj2

 Or by using shortcut method run_tests/1 :

    test_runner::run_tests([test_suite_obj1, test_suite_obj2]).


## TODO

- enhance code
- add documentation directives
- add xUnit XML format export feature
- ...


## LICENCE

The MIT License (MIT)

Copyright (c) 2016 Damien Roch

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
