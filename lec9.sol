// SPDX-License-Identifier: GPL-30
pragma solidity >=0.7.0 <0.9.0;

contract A {
    string public name;
    uint256 public age;

    constructor(string memory _name, uint256 _age) {
        name = _name;
        age = _age;
    }

    function change(string memory _name, uint256 _age) public {
        name = _name;
        age = _age;
    }
}

contract B {
    // 이렇게 가져오면 가스 소모가 많다.
    // 컨트랙트나 이런게 무거워질수록 가스가 더 많아지고
    // 블록마다 가스 사용 가능량이 제한되어있기 때문에
    // 에러가 발생할 확률이 올라간다

    A instance = new A("Alice", 52);

    function change(string memory _name, uint256 _age) public {
        instance.change(_name, _age);
    }

    function get() public view returns (string memory, uint256) {
        return (instance.name(), instance.age());
    }
}
