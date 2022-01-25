// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract lec2 {
    //data type
    //boolean, bytes, address, uint

    //reference tyep
    //string, Arrays, struct

    //mapping type

    // boolean: true / false
    bool public b = false;

    // ! || == && 사용 가능
    bool public b1 = !false;
    bool public b2 = false || true; // true
    bool public b3 = false == true; // false
    bool public b4 = false && true; // false

    // bytes 1~32
    bytes4 public bt = 0x12345678; // 개당 4바이트
    bytes public bt2 = "STRING";

    // address
    address public addr = 0xD4Fc541236927E2EAf8F27606bD7309C1Fc2cbee;

    // int vs uint
    // int8 -2^7 ~ 2^7-1
    int8 public it = 4;
    // uint8 unsigned integer 부호가 없음
    // 0~ 2^8-1
    uint256 public uit = 132213;
    // + -  * /

    // uint8 public uit2 = 257; -> 오류남
}
