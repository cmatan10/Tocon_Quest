// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract SupportInterface {

    bool public contractInterface;

    bytes4 public selector1 = bytes4(keccak256("calcFunc1(uint)"));
    
    bytes4 public selector2 = bytes4(keccak256("calcFunc2(bool)"));
    
    function calcFunc1(uint number) private {
    }

    function calcFunc2(bool Boolean) private {
    }

    function calculateXOR(bytes4 id) external {
        bytes4 xorValue = selector1 ^ selector2 ^ bytes4(keccak256("calculateXOR(bytes4)"));
        require(id == xorValue, "This is not the interface of the contract");
            contractInterface = true;
    }
}
















