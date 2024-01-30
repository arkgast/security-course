// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {StdInvariant} from "forge-std/StdInvariant.sol";
import {Counter} from "../src/Counter.sol";

contract CounterTest is StdInvariant, Test {
    Counter public counter;

    function setUp() public {
        counter = new Counter();
        counter.setNumber(0);

        targetContract(address(counter));
    }

    function test_Increment() public {
        counter.increment();
        assertEq(counter.number(), 1);
    }

    function testFuzz_SetNumber(uint256 x) public {
        counter.setNumber(x);
        assertEq(counter.number(), x);
    }

    function invariant_testSetNumber() public {
        assertGe(counter.number(), 0);
    }
}
