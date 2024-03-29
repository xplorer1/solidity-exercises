// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.13;

contract Unchecked {
    /*
        This exercise assumes you understand what unchecked keyword is.
        1. The `getNumber` function reverts when called, you need to make the function stop
           reverting and return underflow value.
    */

    function getNumber(int256 x) public pure returns (int256) {
        int256 result = 0;
        unchecked {
            result = x - 100;   
        }

        return result;
    }
}
