pragma solidity ^0.4.0;


contract Transaction {
    event SenderLogger(address);
    event EtherLogger(uint);
    
    address private owner;
    
    modifier isOwner {
        require(msg.sender == owner);
        _;
    }
    
    modifier validValue {
        assert(msg.value >= 1 ether);
        _;
    }
    
    function Transaction () {
        owner = msg.sender;
    }
    
    function () payable isOwner validValue {
        SenderLogger(msg.sender);
        EtherLogger(msg.value);
    }
    
    function getOwner () returns (address) { return owner; }

    function checkIsOwner () isOwner {
        SenderLogger(msg.sender);
    }
    
    function checkValidValue () validValue {
        EtherLogger(msg.value);
    }
}