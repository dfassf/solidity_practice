// SPDX-License-Identifier: GPL-30
pragma solidity >=0.7.0 <0.9.0;

contract Lec14 {   
    // index: 이벤트 내의 키워드 이벤트 내에서 사용하는 키워드
    // 특정한 이벤트 내의 값들을 들고올 때 사용됨
    // 500개의 이벤트 중 이벤트 하나만 필요. 그걸 가져올 때.
    event numberTracker(uint256 num, string str);
    event numberTracker2(uint256 indexed num, string str);

    // 2번째 녀석은 num만 가지고도 가져올 수 있음
    // 1번째 녀석은 num만 가지고 이벤트를 가져오는 것이 불가능
    uint256 num = 0;
    function PushEvent(string memory _str)public{
        emit numberTracker(num, _str);
        emit numberTracker2(num, _str);
        num++;
    }

}
