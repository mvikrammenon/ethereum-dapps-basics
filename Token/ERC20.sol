pragma solidity ^0.4.0;


interface ERC20 {
    function totalSupply() constant returns (uint _totalSupply);
    function transfer(address _to, uint value) returns (bool success);
    function balanceOf(address _owner) constant returns (uint balance);
    function transferFrom(address _from, address _to,  uint _value) returns (bool success);
    function approve(address _spender, uint _value) returns (bool success);
    function allowance(address _owner, address _spender) constant returns (uint remaining);
}