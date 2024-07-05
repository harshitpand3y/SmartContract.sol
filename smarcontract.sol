// SPDX-License-Identifier: MIT
pragma solidity >=0.6.12 <0.9.0;

contract MyToken {

    // public variables here
    string public name = "harshitpaisa";
    string public symbol = "HKP";
    uint256 public totalSupply = 0;

    // mapping variable here
    mapping(address=> uint) public stable;
    // mint function
    function mint(address _account1, uint1 _value) public {
        totalSupply += _value;
        stable[_account1]+= _value;
    }
    // burn function
    function burn(address _account1, uint1 _value) public {
        if(stable[_account1]>= _value){
            totalSupply -= _value;
            stable[_account1] -= _value;
        }
    }
}
