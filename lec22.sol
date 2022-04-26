// SPDX-License-Identifier: GPL-30
pragma solidity >=0.7.0 <0.9.0;

// for, while, do-while

contract lec22{
/*
    for(초기값; loop 회수; loop 횟수 건너뛰는){
        for loop 내용
    }
*/

    event CountryIndexName(uint256 indexed _index, string _name);
    string[] private countryList = ["South Korea", "North Korea", "USA", "China", "Japan"];

    function forLoopEvents() public {
        for(uint256 i = 0; i<countryList.length; i++){
            emit CountryIndexName(i, countryList[i]);
        }
    }

    /*

    초기값 설정

    while(loop 조건){
        while loop 내용
        while 횟수 변화
    }
*/

    function whileLoopEvents() public {
        uint256 i = 0;
        while(i<countryList.length){
            emit CountryIndexName(i, countryList[i]);
            i++;
        }
    }

    /*
    초기값
    do {
        dowhileLook 내용
    }

    while(반복수)
    */
    // 단점: i가 while 안의 조건(countryList 길이)보다 크게 되면
    // emit이 제대로 작동 안할 수 있음
    function doWhileLoopEvent() public {
        uint256 i = 0;
        do{
            emit CountryIndexName(i, countryList[i]);
            i++;
        }
        while(i < countryList.length);
    }


}