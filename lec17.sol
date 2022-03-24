// SPDX-License-Identifier: GPL-30
pragma solidity >=0.7.0 <0.9.0;

// mapping은 length를 구할 수 없다.
contract lec17 {
    // mapping: 특정한 키를 넣어주면 특정한 밸류를 반환시켜줌

    // keyType=>valueType
    mapping(uint256=>uint256) private ageList;
    mapping(string=>uint256) private priceList;
    mapping(uint256=>string) private nameList;

    function setAgeList(uint _index, uint _age) public {
        ageList[_index] = _age;
    }

    function getAge(uint256 _index) public view returns(uint256) {
        return ageList[_index];
    }

    function setPriceList(string memory _itemName, uint256 _price) public {
        priceList[_itemName] = _price;
    }

    function getPriceList(string memory _index) public view returns (uint256) {
        return priceList[_index];
    }
}