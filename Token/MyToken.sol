pragma solidity ^0.4.0;

import "./ERC20.sol";

contract MyFirstToken is ERC20 {
    string public constant SYMBOL = "MT";
    string public constant NAME = "My Token";
    uint8 public constant DECIMALS = 18;

    uint private constant __totalSupply = 1000;
    address private owner;
    mapping (address => uint) private __balanceOf;
    
    // Constructor
    function MyFirstToken() {
        owner = msg.sender;
        __balanceOf[owner] = __totalSupply;
    }

    function totalSupply() public constant returns (uint _totalSupply) {
        _totalSupply = __totalSupply;
    }


    function balanceOf(address _addr) public constant returns (uint balance) {
        return __balanceOf[_addr];
    }

    // Only to send from owner to other addresses
    function transfer(address _to, uint _value) public returns (bool success) {
        if(_value > 0 && _value <= __balanceOf[owner]) {
            __balanceOf[owner] -= _value;
            __balanceOf[_to] += _value;
            return true;
        }
        return false;
    }

    // TODO
    function transferFrom(address _from, address _to,  uint _value) returns (bool success) {
        return true;
    }

    // TODO
    function approve(address _spender, uint _value) returns (bool success) {
        return true;
    }

    // TODO
    function allowance(address _owner, address _spender) constant returns (uint remaining) {
        return 10;
    }
}