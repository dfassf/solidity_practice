// SPDX-License-Identifier: GPL-30
pragma solidity >=0.7.0 <0.9.0;

contract lec13 {   
    // 솔리디티 안에 프린트 기능은 없으나 이벤트 기능이 있음
    // 이벤트로 값을 출력할 때 블록 안에 저장이 됨. 언제든 꺼내서 쓸 수 있음
    event info(string name, uint256 money);

    function sendMoney() public{
        emit info("KimDaeJin", 1000);
    }
}
