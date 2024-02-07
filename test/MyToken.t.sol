// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {MyToken} from "../src/MyToken.sol";

contract MyTokenTest is Test {
    MyToken public myToken;

    function setUp() public {
        myToken = new MyToken();
    }

    function test_DecimalsAmount() public {
        uint8 decimals = myToken.decimals();

        assertEq(decimals, 6);
    }
}
