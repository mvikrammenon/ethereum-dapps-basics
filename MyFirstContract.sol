pragma solidity ^0.4.0;


interface Regulator {
    // Functions in interfaces cannot be internal or private
    function checkValue(uint amount) public returns (bool);
    function loan() public returns(bool);
}


contract Bank is Regulator {
    
    uint private value;
    address private owner;
    
    modifier ownerFunc {
        require(owner == msg.sender);
        _;
    }
    
    function Bank (uint amount) {
        value = amount;
        owner = msg.sender;
    }
    
    function deposit (uint amount) ownerFunc {
        value += amount;
    }
    
    function withdraw (uint amount) ownerFunc {
        value -= amount;
    }
    
    function balance ()  returns (uint) {
        return value;
    }
    
    function checkValue(uint amount) returns (bool){
        return amount <= value;
    }
    
    function loan() returns(bool) {
        return true;
    } 
    
}


contract MyFirstContract is Bank(120) {
    string private name;
    uint private age;
    
    function getName() returns (string) {
        return name;
    }
    
    function setName(string newName) {
        name = newName;
    }
    
    function setAge(uint newAge) {
        age = newAge;
    }
    
    function getAge() returns (uint) {
        return age;
    }
    
}


contract TestErrors {
    function testAssert() {
        assert(1 == 2);
    }
    
    function testRequire() {
        require(2 == 1);
    }
    
    function testRevert() { revert(); }
    
}