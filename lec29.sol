// SPDX-License-Identifier: GPL-30
pragma solidity >=0.7.0 <0.9.0;

contract lec29 {
    function add(uint256 _num1, uint256 _num2) public pure returns (uint256) {
        uint256 total = _num1 + _num2;
        return total;
    }

    function add2(uint256 _num1, uint256 _num2) public pure returns (uint256 total) {
        total = _num1 + _num2;
        // 매개변수가 많아지면 헷갈릴 수 있음,,
        return total;
    }
}