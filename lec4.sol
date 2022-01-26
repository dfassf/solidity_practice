// SPDX-License-Identifier: GPL-30
pragma solidity >=0.7.0 <0.9.0;

contract lec4 {
    /*
    function 이름 () public{ // (public, private, internal, external)
        // 내용
    }
    */
    uint256 public a = 3;

    // parameter 없고 return 값 없음
    function changeA1() public {
        a = 5;
    }

    // parameter 있고 return 값 없음
    function ChangeA2(uint256 _value) public {
        a = _value;
    }

    // parameter 있고 return 값 있음
    function changeA3(uint256 _value) public returns (uint256) {
        a = _value;
        return _value;
    }
}
