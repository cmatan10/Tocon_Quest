// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract InterfaceId {
    bool public answer;

    function CalcMe(bytes4 id) external {
        require(id == bytes4(keccak256("CalcMe(bytes4)")), "Calc Me Again!");
        answer = true;
    }

    
function Calc() public pure returns(bytes4){
   return bytes4(keccak256("CalcMe(bytes4)"));
}
}
