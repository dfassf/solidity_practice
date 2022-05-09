// SPDX-License-Identifier: GPL-30
pragma solidity >=0.7.0 <0.9.0;


// 외부 스마트 컨트랙트 생성 시 try catch:


contract character {
    string private name;
    uint256 private power;

    constructor(string memory _name, uint256 _power) {
        name = _name;
        power = _power;
    }
}

contract runner {
    event catchOnly(string _name, string _err);

    function playTryCatch(string memory _name, uint256 _power) public returns (bool successOrFail) {
        // revert("error in the try section") // 오류가 안남
        try new character(_name, _power) {
            return (true);
        }
        // 그냥 catch만 써줌
        catch {
            emit catchOnly("catch", "errors");
            return (false);
        }
    }
}


// 스마트 컨트랙트 내에서 함수를 부를 때:

contract runner2 {
    event catchOnly2(string _name, string _err);
    function simple() public returns(uint256) {
        return 4;
    }
    event catchOnly(string _name, string _err);

    function playTryCatch() public returns(uint256, bool) {
        //  this=runner2
        try this.simple() returns (uint256 _value) {
            return (_value, true);
        }
        catch {
            emit catchOnly("catch", "errors");
            return (0, false);
        }
    } 
}