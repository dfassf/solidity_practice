// SPDX-License-Identifier: GPL-30
pragma solidity >=0.7.0 <0.9.0;

//에러 핸들러: require, revert, assert, try/catch

contract lec26{

/*
    0.8.1 에서부터는
    assert: 오직 내부적 에러 테스트 용도.
    assert가 에러 발생시키면 Panic(uint256)이라는 타입의 에러 발생
 */
    function assertNow () public pure{
        assert(false);
    }
    
    function revertNow () public pure {
        revert("error");
    }

    function requireNow () public pure {
        require(false, "error");
    }

    function onlyAdults(uint256 _age) public pure returns(string memory) {
        if(_age < 19) {
            revert("no cig allowed");
        }
        return "payment proceeded";
    }

    function onlyAdults2(uint256 _age) public pure returns(string memory) {
        require(_age>19, "no cig allowed");
        return "payment proceeded";
    }
}