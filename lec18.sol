// SPDX-License-Identifier: GPL-30
pragma solidity >=0.7.0 <0.9.0;

contract lec18{
    // 일반 배열과 같다
    // 솔리디티에서는 mapping을 더 많이 쓰는데, 값들을 순회하게 하는게 문제가 될 수 있어서 그렇다
    // 가령 ddos공격이 들어올 수가 있다
    
    // 일반적인 배열
    uint256[] public ageArray;
    // 렝스가 고정된 배열
    uint256[10] public ageFixedSizeArray;
    // 배열 값을 미리 입력
    string[] public nameArray = ["Kal", "John", "Kerri"];

    function AgeLength() public view returns(uint256) {
        return ageArray.length;
    }

    function AgePush(uint256 _age) public {
        // 값 넣기(맨 뒤에)
        ageArray.push(_age);
        // 제일 뒤의 값 제거
        // ageArray.pop();
    }

    function AgeDelete(uint256 _index) public {
        // 렝스가 변하지 않고 인덱스에 맞는 밸류만 지워짐
        delete ageArray[_index];
    }

    function AgeChange(uint256 _index, uint256 _age) public {
        ageArray[_index] = _age;
    }

    function AgeGet(uint256 _index) public view returns(uint256) {
        return ageArray[_index];
    }
}