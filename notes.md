# Commands

    $ forge init

    $ forge build

    $ forge test

    $ forge test --mt <testName>

# Concepts

## Flash loan attack

* Fuzz tests

    Fuzz testing: Supply random data to your system in an attempt to break it.

* Stateless fuzzing

    Where te state of the previous run is discarted for every new run.

* Stateful fuzzing

    Fuzzing where the final state of your previous run is the starting state of our next run.

* Invariant tests

    Invariant: Property of our system that should alwasys hold in simple words,
    this property should remain the same always.

*In foundry* _fuzzing_ is stateless fuzzing and _invariants_ are stateful fuzzing.

## Basic understanding

A simple input might not be enough to test all possible scenarios.
So a fuzz tests would help on doing this since it programatically can send
different inputs.

Metodologies that can be used:

1. Fuzz/Invariant Tests
2. Symbolic Execution/Formal Verification

*Understand how fuzzer picks random data is important.*
