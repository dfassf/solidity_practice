// SPDX-License-Identifier: GPL-30
pragma solidity >=0.7.0 <0.9.0;

contract lec5 {
    /*
        function 이름 () public{ // (public, private, internal, external)
            // 내용
        }
    */

    /*
    public: 모든 곳에서 접근 가능
    external: public 처럼 모든 곳에서 접근 가능하나, external이 정의된 자기 자신의 contract에서는 접근 불가
    private: private이 정의된 자기 contract에서만 접근 가능(private이 정의된 contract를 상속받은 자식도 불가능)
    internal: private처럼 오직 internal이 정의된 자기 자신의 contract에서만 가능하고, internal이 정의된 contract를 상속받은 자식도 불가능
    */

    // 1. public
    uint256 public a = 5;

    // 2. private
    uint256 public a2 = 5;
}

contract public_example {
    uint256 public a = 3;

    function changeA(uint256 _value) external {
        a = _value;
    }

    function get_a() public view returns (uint256) {
        return a;
    }
}

contract public_example_2 {
    // contract를 쓰기 위해 instance화 시켜야 함
    public_example instance = new public_example();

    function changeA_2(uint256 _value) public {
        instance.changeA(_value);
    }

    function use_public_example_a() public view returns (uint256) {
        return instance.get_a();
    } // public_example의 changeA(), get_a()를 private로 바꾸면 작동 X
}
