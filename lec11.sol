// SPDX-License-Identifier: GPL-30
pragma solidity >=0.7.0 <0.9.0;

contract Father {
    // overriding: 간단하게 말해 덮어씌우기
    string public familyName = "Kim";
    string public givenName = "Jung";
    uint256 public money = 100;

    constructor(string memory _givenName) public{
        givenName = _givenName;
    }

    function getFamilyName() view public returns(string memory) {
        return familyName;
    }

    function getGivenName() view public returns(string memory) {
        return givenName;
    }
    // 얘를 아들쪽에 오버라이딩 하기 위해서는
    // 오버라이딩할 함수에 virtual 추가
    function getMoney() view virtual public returns(uint256) {
        return money;
    }
}

contract Son is Father("James") {
    uint256 public earning = 0;
    function work() public {
        earning += 100;
    }
    // 오버라이딩 해 넣을 함수에는 override 추가
    function getMoney() view override public returns(uint256){
        return money + earning;
    }
}
