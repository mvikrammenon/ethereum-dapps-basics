pragma solidity ^0.4.0;


library Strings {
    
    function concat(string _prefix, string _suffix) internal returns (string) {
        // Solidity quirk - String is internally stored as byte array
        // To concat, convert string to bytes
        // memory - non persistent - like RAM
        bytes memory _bytesPrefix = bytes(_prefix);
        bytes memory _bytesSuffix = bytes(_suffix);
        
        string memory _tempValue = new string(_bytesPrefix.length + _bytesSuffix.length);
        bytes memory _result = bytes(_tempValue);
        
        uint i;
        uint j = 0;
        
        for (i = 0; i < _bytesPrefix.length; i++) {
            _result[j++] = _bytesPrefix[i];
        }
        
        for (i = 0; i < _bytesSuffix.length; i++) {
            _result[j++] = _bytesSuffix[i];
        }
        
        return string(_result);
    }
}


contract TestStringLibrary {
    
    // Library used using the key 'for'
    // Apply Library on data type
    using Strings for string;
    
    function testConcat (string _prefix) returns (string) {
        bytes memory _bytesPrefix = bytes(_prefix);
        assert(_bytesPrefix.length > 0);
        return _prefix.concat("_mySuffix");
    } 
    
}