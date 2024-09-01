# These tests are auto-generated with test data from:
# https://github.com/exercism/problem-specifications/tree/main/exercises/perfect-numbers/canonical-data.json
# File last updated on 2024-08-29
app [main] {
    pf: platform "https://github.com/roc-lang/basic-cli/releases/download/0.15.0/SlwdbJ-3GR7uBWQo6zlmYWNYOxnvo8r6YABXD-45UOw.tar.br",
}

main =
    Task.ok {}

import PerfectNumbers exposing [classify]

##
## Perfect numbers
##

# Smallest perfect number is classified correctly
expect
    result = classify 6
    result == Ok Perfect

# Medium perfect number is classified correctly
expect
    result = classify 28
    result == Ok Perfect

# Large perfect number is classified correctly
expect
    result = classify 33550336
    result == Ok Perfect

##
## Abundant numbers
##

# Smallest abundant number is classified correctly
expect
    result = classify 12
    result == Ok Abundant

# Medium abundant number is classified correctly
expect
    result = classify 30
    result == Ok Abundant

# Large abundant number is classified correctly
expect
    result = classify 33550335
    result == Ok Abundant

##
## Deficient numbers
##

# Smallest prime deficient number is classified correctly
expect
    result = classify 2
    result == Ok Deficient

# Smallest non-prime deficient number is classified correctly
expect
    result = classify 4
    result == Ok Deficient

# Medium deficient number is classified correctly
expect
    result = classify 32
    result == Ok Deficient

# Large deficient number is classified correctly
expect
    result = classify 33550337
    result == Ok Deficient

# Edge case (no factors other than itself) is classified correctly
expect
    result = classify 1
    result == Ok Deficient

##
## Invalid inputs
##

# Zero is rejected (as it is not a positive integer)
expect
    result = classify 0
    result == Err OnlyPositiveIntegersAreAllowed

# Negative integer is rejected (as it is not a positive integer)
expect
    result = classify -1
    result == Err OnlyPositiveIntegersAreAllowed

