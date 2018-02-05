pragma solidity ^0.4.0;


contract DataTypes {
    
    // Enums
        enum MyActions {ADD, REMOVE}
        MyActions my_add_action = MyActions.ADD;
        MyActions my_rem_action = MyActions.REMOVE;
        
        event EnumLogger(MyActions);
        function logEnum () {
            EnumLogger(my_add_action);
            EnumLogger(my_rem_action);
        }
    // End Enums block
    
    // struct
    // Struct - Nothing but an object with no functions.
    // Needs to be initialized for consumption
        struct Account {
            uint balance;
            uint dailyLimit;
        }
        
        event AccountLogger(uint balance, uint dailyLimit);
      // Initialize struct
        Account myAccount;
        function logMyAccount() {
            myAccount.balance = 100;
            
            AccountLogger(myAccount.balance, myAccount.dailyLimit);
        }    
        
    // End struct block
    
    
    // mapping
    // hash map
    // can be mapped only to a struct, enum or Contract
        address myAddress;
        
        mapping (address => Account) _account;
        event MappedAccountLogger(uint);
        
        function logMappedAccount() {
            // tried all logging .. not working
            MappedAccountLogger(_account[0]);
        }
    // End mapping block
    
    
}