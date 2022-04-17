// SPDX-License-Identifier: GPL-30
pragma solidity >=0.7.0 <0.9.0;

contract lec21 {
/* 
    case 1: if-else
    if(if가 발동되는 조건){
        if 내용
    }
    else{if가 발동이 안되면 
        else 내용
    }

    case 2: if-else if-else
     if(if가 발동되는 조건){
        if 내용
    }
    else if(else if가 발동되는 조건){if가 발동이 안되면 
        else 내용
    }
    ....
    else{if, else if가 발동이 안되면
        else 내용
    }
*/

    string private outcome = "";
    function isIt5(uint256 _number) public returns(string memory) {
        if(_number == 5) {
            outcome = "yes it is 5";
            return outcome;
        }
        else { // 이 경우에는 else가 없어도 작동함 
            outcome = "nope";
            return outcome;
        }
    }

        function advancedIsIt(uint256 _number) public returns(string memory) {
        if(_number == 1) {
            outcome = " it is 1";
            return outcome;
        }
        else if(_number == 3) {
            outcome = "it is 3";
            return outcome;
        }
        else if(_number == 5) {
            outcome = "it is 5";
            return outcome;
        }
        else { // 이 경우에는 else가 없어도 작동함 
            outcome = "not 1/3/5";
            return outcome;
        }
    }
}