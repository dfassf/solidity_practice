// SPDX-License-Identifier: GPL-30
pragma solidity >=0.7.0 <0.9.0;

//에러 핸들러: require, revert, assert, try/catch

contract lec25{
/* 0.4.22 ~ 0.7.x
    assert: 가스 다 소비 후 특정 조건에 부합하지 않으면(false) 에러 발생
    revert: 조건없이 에러 발생, gas 환불
    require: 특정 조건에 부합하지 않으면(false) 에러 발생

 */
    function assertNow () public pure{
        assert(false);
    }
    
    function revertNow () public pure {
        revert("error");
        // 에러메시지 삽입 가능
        // 무조건 에러이기 때문에 if나 require를 삽입
        // require = if + revert
    }

    function requireNow () public pure {
        require(false, "error");
    }

}

