pragma solidity ^0.4.0;

// Remix environment, have to import as below
import "browser/library.sol";


contract TestLib {
    //using IntExtended for uint;
    
    function testIncrement (uint _base) returns (uint) {
        return IntExtended.increment(_base); 
    }
}