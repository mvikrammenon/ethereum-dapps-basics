pragma solidity ^0.4.0;


library IntExtended {
    
    function increment (uint _self) private returns (uint) { return _self+1; }
    function decrement (uint _self) private returns (uint) { return _self-1; }
    function incrementByValue (uint _self, uint _val) private returns (uint) { return _self+_val; }
    
}