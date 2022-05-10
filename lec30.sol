// SPDX-License-Identifier: GPL-30
pragma solidity >=0.7.0 <0.9.0;

contract lec30 {
    function onlyAdults2(uint256 _age) public pure returns(string memory) {
        //공통된 함수 require 안의 조건이 바뀌면 다 바꿔줘야 하므로
        // modifier만 수정해주면 됨
        require(_age > 19, "not allowed");
        return "succeeded";
    }

    function onlyAdults3(uint256 _age) public pure returns(string memory) {
        require(_age > 19, "not allowed"); 
        return "succeeded";
    }

    modifier onlyAdults { // 파라미터가 없으면 괄호 없이. 있으면 (){ 형태로.,
        revert("no no no");
        _;
    }

    function buyCig() public pure onlyAdults returns (string memory) {
        return "succeeded";
    }

    modifier onlyAdults22(uint256 _agee) {
        require(_agee > 18, "nope");
        _;
    }

    function buyCig2() public pure onlyAdults22(50) returns (string memory) {
        return "succeeded";
    }

    uint256 public num = 5;
    modifier numChange{
        _;
        num = 10;
    }

    function numChangeFunc() public numChange {
        num = 15;
    }
}