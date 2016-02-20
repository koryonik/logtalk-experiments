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
