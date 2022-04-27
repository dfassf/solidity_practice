// SPDX-License-Identifier: GPL-30
pragma solidity >=0.7.0 <0.9.0;

contract lec24{
    event CountryIndexName(uint256 indexed _index, string _name);
    string[] private countryList = ["SK","NK","US","JP","CN"];

    function linearSearch(string memory _search) public view returns(uint256, string memory) {
        // 기본이 변수 없는 숫자 문자 리턴이라 매개변수 안써도 되는 듯
        for(uint256 i = 0; i < countryList.length; i++) {
            // 솔리디티에서는 string 비교가 불가하여 keccak256으로 변환 후 비교
            if(keccak256(bytes(countryList[i])) == keccak256(bytes(_search))) {
                return (i, countryList[i]);
            }
            return (0,"nothing");
        }
    }

}