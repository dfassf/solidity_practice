// SPDX-License-Identifier: GPL-30
pragma solidity >=0.7.0 <0.9.0;

contract Father {   
    uint256 public fatherMoney = 100;
    function getFatherName() public pure returns(string memory) {
        return "KimJung";
    }

    function getMoney() public view virtual returns(uint256){
        return fatherMoney;
    }
}

contract Mother {
    uint256 public motherMoney = 500;
    function getMotherName() public pure returns(string memory) {
        return "Leesol";
    }
    function getMoney() public view virtual returns(uint256){
        return motherMoney;
    }
}

contract Son is Father, Mother{
    // 함수가 겹쳐서 오류가 날 수 있음
    // 두 개 이상의 스마트컨트랙트를 상속 받을 때
    // 이름이 같은 함수가 있다면 오류가 날 수 있음 그러므로 오버라이딩 해줘야 함
    // 부모 컨트랙트 이름 쓰기
    function getMoney() public view override(Father, Mother) returns(uint256){
        return fatherMoney+motherMoney;
    }
}
