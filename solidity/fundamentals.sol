// A contract should start with pragma solidity following the compiler version
pragma solidity >0.5.0;

contract Fundamentals {

// DATA TYPES
    uint unsignInteger;
    /*
        - is an integer that can assume negative values.
        - uint means uint256.
        - there are different uint byte lengths, like uint256, uint128, uint96.  
    */

    string name;
    /*
        - it is a reference type.
        - it is 32 bytes in length.
     */

    struct AwesomeStruct {
        uint foo;
        string bar;
    }
    /*
        - allows to handle complex structures, like for example Person.
    */

    uint[2] fixedArray;
    uint[] dynamicArray;
    AwesomeStruct[] dynamicArrayOfStruct;

    /* 
        - nothing to add here, it is very straightforward.
    */


    // TYPECASTING
        uint8 a = 5;
        uint b = 6;
        // throws an error because a * b returns a uint, not uint8:
        uint8 c = a * b;
        // we have to typecast b as a uint8 to make it work:
        uint8 d = a * uint8(b);
    // END TYPECASTING


// END DATA TYPES

// FUNCTIONS
    
    /*
        - functions are **public** by default.
            - anyone or any other contract can call the contract's function.
        - **memory** word allows to pass a reference type as a value type, like in C#.
    */
    function justAFunction(string memory _value, uint otherValue) public {

    }

    /* 
        - it is a very good practice make functions **private** by default and only expose what we need to expose.
    */
    function _iAmPrivate(string memory _value, uint otherValue) private {

    }

    /*
        - how to return a value from a function.
        - the function declaration contains the type of the return value.
    */
    function iReturnSomething() public returns (string memory)  {
        return name;
    }

    // FUNCTION MODIFIERS
    /*
        - **view** modifier is for functions that does not modify anything.
        - like read only functions.
        - can read contract variables but cannot modifiy them.
    */
    function iAmReadonly() public view returns(string memory) {
        return name;
    }

    /*
        - **pure** modifier.
        - I think this like the same concept of Functional Programming.
            - Given the same input will get always the same output.
        - In Solidity means that does not modify the state of the app.
    */

    function iAmPure(uint a, uint b) public pure returns(uint) {
        return a * b;
    }


    // END FUNCTION MODIFIERS

// END FUNCTIONS

// Keccak256
/*
    - Keccack256 is a hash function, it is a version of SHA3 algorithm.
    - Ethereum has Keccak256 function built in.
*/
// END Keccak256

// EVENTS
    /*
        - Events are a way to your contract communicate with your frontend app.
        - Your frontend app will listen this events.
    */

    event anAwesomeEvent(uint x, uint y, uint result);

    function raiseAnEvent() public {
        emit anAwesomeEvent(40, 2, 42);
    }

// END EVENTS

}