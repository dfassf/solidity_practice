// SPDX-License-Identifier: GPL-30
pragma solidity >=0.7.0 <0.9.0;

contract lec23{
    // continue 다음 반복문으로 이ㅇ
    // break 반복문 끝냄

    event CountryIndexName(uint256 indexed _index, string _name);
    string[] private countryList = ["SK", "NK", "US", "CN", "JP"];

    function useContinue() public {
        for(uint256 i = 0; i < countryList.length; i++) {
            if(i % 2 == 1) {
                // 나머지가 1이 나오는 경우에 대해서는 함수 스킵
                // 즉 짝수일 때만 emit이 실행
                continue;
            }
            emit CountryIndexName(i, countryList[i]);
        }
    }

    function useBreak() public {
        for(uint256 i = 0; i < countryList.length; i++) {
            if(i == 2) {
                //아는 것 처럼 2가 되면 끝남
                break;
            }
            emit CountryIndexName(i, countryList[i]);
        }
    }
}