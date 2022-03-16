// SPDX-License-Identifier: GPL-30
pragma solidity >=0.7.0 <0.9.0;

contract A {
    uint256 public a = 5;

    function change(uint256 _value) public {
        a = _value;
    }
}

contract B {
    // 컨트랙트+ 이름, 쓰고싶은 인스턴스 이름
    // A의 분신같은 기능을 함 -> A의 값은 변하지 않음
    A instance = new A();

    function get_A() public view returns (uint256) {
        return instance.a(); // 꼭 괄호
    }

    function change_A(uint256 _value) public {
        instance.change(_value);
    }
}
