// SPDX-License-Identifier: GPL-30
pragma solidity >=0.7.0 <0.9.0;

contract lec19{
    uint256 num = 89;
    mapping(uint256=>uint256) numMap;
    uint256[] numArray;

    function changeNum(uint256 _num) public {
        num = _num;
    }

    function showNum() public view returns(uint256) {
        return num;
    }

    function numMapAdd() public {
        numMap[0] = num;
    }

    function showNumMap() public view returns(uint256) {
        return numMap[0];
    }

    function numArrayAdd() public {
        numArray.push(num);
    }

    function showNumArray() public view returns(uint256) {
        return numArray[0];
    }

    // array와 map의 값을 실제로 바꾸는게 아니라 얕은 복사를 하기 때문에 원래 값은 안바뀜
    // 원래 값을 바꿔주려면 이렇게

    function updateArray() public {
        numArray[0] = num;
    }
}