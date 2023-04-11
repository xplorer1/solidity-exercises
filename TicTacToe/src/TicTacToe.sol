// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.13;

contract TicTacToe {
    /* 
        This exercise assumes you know how to manipulate nested array.
        1. This contract checks if TicTacToe board is winning or not.
        2. Write your code in `isWinning` function that returns true if a board is winning
           or false if not.
        3. Board contains 1's and 0's elements and it is also a 3x3 nested array.
    */

    function isWinning(uint8[3][3] memory board) public pure returns (bool) {
        // your code here
        for(uint256 i = 0; i < board.length; i++) {
            
            for(uint256 j = 0; j < board[i].length; j++) {
                if(board[0][0] == board[1][1] && board[0][0] == board[2][2]) return true;
            }
        }

        return false;
    }
}
