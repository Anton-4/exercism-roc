# These tests are auto-generated with test data from:
# https://github.com/exercism/problem-specifications/tree/main/exercises/armstrong-numbers/canonical-data.json
# File last updated on 2025-07-26
app [main!] {
    pf: platform "https://github.com/roc-lang/basic-cli/releases/download/0.19.0/Hj-J_zxz7V9YurCSTFcFdu6cQJie4guzsPMUi5kBYUk.tar.br",
}

import pf.Stdout

main! = |_args|
    Stdout.line!("")

import ArmstrongNumbers exposing [is_armstrong_number]

# Zero is an Armstrong number
expect
    result = is_armstrong_number(0)
    result == Bool.true

# Single-digit numbers are Armstrong numbers
expect
    result = is_armstrong_number(5)
    result == Bool.true

# There are no two-digit Armstrong numbers
expect
    result = is_armstrong_number(10)
    result == Bool.false

# Three-digit number that is an Armstrong number
expect
    result = is_armstrong_number(153)
    result == Bool.true

# Three-digit number that is not an Armstrong number
expect
    result = is_armstrong_number(100)
    result == Bool.false

# Four-digit number that is an Armstrong number
expect
    result = is_armstrong_number(9474)
    result == Bool.true

# Four-digit number that is not an Armstrong number
expect
    result = is_armstrong_number(9475)
    result == Bool.false

# Seven-digit number that is an Armstrong number
expect
    result = is_armstrong_number(9926315)
    result == Bool.true

# Seven-digit number that is not an Armstrong number
expect
    result = is_armstrong_number(9926314)
    result == Bool.false

