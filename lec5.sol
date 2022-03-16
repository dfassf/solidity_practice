// SPDX-License-Identifier: GPL-30
pragma solidity >=0.7.0 <0.9.0;

contract lec6 {
    /*
        function 이름 () public{ // (public, private, internal, external)
            // 내용
        }
    */

    /* 
    function get_a() external view returns(uint256)
    */

    /*
    view: function 밖의 변수를 읽을 수 있으나 변경 불가능
    pure: function 밖의 변수들을 읽을 수 없고 변경도 불가능
    view와 pure 둘 다 명시 안할 때: function 밖의 변수들을 읽어서 변경 해야 함
    */

    // 1. view
    uint256 public a = 1;

    function read_a() public view returns (uint256) {
        return a + 2;
        // 안바뀜
    }

    function read_b() public pure returns (uint256) {
        uint256 b = 1;
        return 4 + 2 + b;
        // 안의 것만.
        // a를 쓰면 typeError가 뜸
    }

    function read_c() public returns (uint256) {
        a = 13;
        // a를 바꾸기 때문에 pure, view 불가능
        // 리턴값 13이 나옴
        return a;
    }
}
