// SPDX-License-Identifier: GPL-30
pragma solidity >=0.7.0 <0.9.0;

contract lec32{
    // payable
    // 이더나 토큰과 상호작용시 필요한 키워드
    // send, transfer, call을 이용하여 이더를 보낼 때 씀. 함수/주소/생성자에 붙음

    //msg.value: 송금보낸 코인의 값

    // send: 2300gas 소비, 성공 여부 true/false로 리턴
    // transfer: 2300gas 소비, 실패시 에러
    // call: 가변적인 gas 소비, true/false 리턴
    // 재진입 위험성 있음. 19.12 이후 call 사용 추천

    event howMuch(uint256 _value);
    // * 참고: 이 함수들은 리믹스에서 배포 시 빨간색 버튼으로 나오는데 payable 때문에 그럼
    function sendNow(address payable _to) public payable{
        // _to: 이더를 받을 사람, 스마트 컨트랙트 주소도 가능
        bool sent = _to.send(msg.value); //return true or false
        require(sent,"failed to send ether");
        emit howMuch(msg.value);
    }

    function transferNow(address payable _to) public payable {
        _to.transfer(msg.value);
        emit howMuch(msg.value);
    }

    function callNow(address payable _to) public payable {
        // ~0.7
        // (bool sent, ) = _to.call.gas(1000).value(msg.value)("");
        // require(sent, "failed");

        // 0.7~
        (bool sent, ) =  _to.call{value: msg.value, gas:1000}("");
        require(sent, "failed");
        emit howMuch(msg.value);
    }
}