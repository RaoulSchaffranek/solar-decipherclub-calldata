// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;


contract Calldata {

    function call_encodeFirst() external {
        this.encodeFirst(1,2,3);
    }

    function encodeFirst(uint256 a,uint256 b, uint256 c) pure external returns (uint256) {
        uint256 result = a + b + c;
        return result;
    }


}