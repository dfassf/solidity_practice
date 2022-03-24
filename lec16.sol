// SPDX-License-Identifier: GPL-30
pragma solidity >=0.7.0 <0.9.0;

contract Father{
    event FatherName(string name);
    function who() public virtual{
        emit FatherName("KimDaeHo");
    }
}

contract Mother{
    event MotherName(string name);
    function who() public virtual{
        emit MotherName("LeeSol");
    }
}

contract Son is Father, Mother{
    function who() public override(Father, Mother){ 
        super.who();
    }
}