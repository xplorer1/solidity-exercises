// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/Unchecked.sol";

contract UncheckedTest is Test {
    Unchecked public uncheckedContract;

    function setUp() public {
        uncheckedContract = new Unchecked();
    }

    function testUnchecked() public {
        int256 res = uncheckedContract.getNumber(10);
        int256 res1 = uncheckedContract.getNumber(0);
        int256 res2 = uncheckedContract.getNumber(50);
        int256 res3 = uncheckedContract.getNumber(20);

        assertEq(res, -90, "expected result to be -90");
        assertEq(res1, -100, "Expected -100");
        assertEq(res2, -50, "Expected -50");
        assertEq(res3, -80, "Expected -80");
    }
}
