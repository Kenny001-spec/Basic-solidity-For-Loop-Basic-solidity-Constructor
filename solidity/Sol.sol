/***
Solidity 0.8
* safe math
* custom errors
* functions outside contract
* import {symbol1 as alias, symbol2} from "filename";
* Salted contract creations / create2
***/
// SPDX-License-Identifier: MIT

// safe math
contract SafeMath {
    function testUnderflow() public pure returns (uint) {
        uint x = 0;
        x--;
        return x;   // it return a maximum uint.
    }
    function testUncheckedUnderflow() public pure returns (uint) {
        uint x = 0;
        unchecked {x--;}
        return x;   
    }
}