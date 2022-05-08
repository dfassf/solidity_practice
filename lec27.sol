// SPDX-License-Identifier: GPL-30
pragma solidity >=0.7.0 <0.9.0;

contract lec27{
// try catch: 에러가 나도 종료가 되지 않도록.
// try catch 안에서 assert/revert/require를 통해 오류가 나면
// 개발자의 의도인 것으로 이해하여 프로그램을 '정상적으로' 종료함

// catch Error: revert, require를 통해 생성된 에러
// catch Panic: assert를 통해 생성된 에러
// catch(bytesmemoryLowLevelData): low level 에러 잡음

// 외부 스마트 컨트랙트 함수를 부를 때
// 외부 스마트 컨트랙트 생성할 때
// 스마트 컨트랙트 내에서 함수를 부를 때


}

contract math {
    function division(uint256 _num1, uint256 _num2) public pure returns (uint256) {
        require(_num1 < 10, "num1 should not be bigger than 10");
        return _num1 / _num2;
    }
}

contract runner {
    event catchErr(string _name, string _err);
    event catchPanic(string _name, uint256 _err);
    event catchLowLevelErr(string _name, bytes _err);
    math public mathInstance = new math();
    function playTryCatch(uint256 _num1, uint256 _num2) public returns (uint256, bool) {
        try mathInstance.division(_num1, _num2) returns(uint256 value){
            return (value, true);
        } catch Error(string memory _err){ 
            emit catchErr("revert/require", _err);
            return (0, false);
        } catch Panic(uint256 _errorCode) {
            emit catchPanic("assertError/panic", _errorCode);
            return (0, false);
        } catch (bytes memory _errorCode) {
            emit catchLowLevelErr("LowlevelError", _errorCode);
            return (0, false);
        }
    }
}