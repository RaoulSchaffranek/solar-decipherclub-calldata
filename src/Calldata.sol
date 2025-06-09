// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;


contract Calldata {

    function call_encodeFirst() external {
        this.encodeFirst(1,2,3);
    }

    function encodeFirst(uint256 a,uint256 b, uint256 c) pure external returns (bytes memory) {
        return msg.data;
    }

    function call_encodeSecond() external {
        this.encodeSecond("DecipherClub");
    }

    function encodeSecond(string memory s) external pure returns(bytes memory) {
        return msg.data;
    }

    function call_encodeThird() external {
        this.encodeThird(786, 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4, "DecipherClub");
    }

    function encodeThird(uint256 a, address b, string memory c) external pure returns (bytes memory) {
        return msg.data;
    }

    function call_staticType() external {
        this.staticType(1,2);
    }

    function staticType(uint256 a, uint256 b) external pure returns (bytes memory){
        return msg.data;
    }

    function call_dynamicType() external {
        this.dynamicType("DecipherClub");
    }

    function dynamicType(string memory s) public pure returns(bytes memory ){
        return msg.data;
    }

}