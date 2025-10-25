// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract VariableExamples {
    // ========================================
    // 🔢 VALUE TYPES — store data directly
    // ========================================

    // Unsigned integer: can only hold positive numbers (0 to 2^256 - 1)
    uint256 public count = 42;

    // Signed integer: can hold positive and negative numbers (-128 to 127 for int8)
    int8 public temp = -5;

    // Boolean value: true or false
    bool public isActive = true;

    // Address: stores a 20-byte Ethereum address
    address public owner = msg.sender; // initialized with the deployer's address

    // bytes32: fixed-size byte array (used for hashes, identifiers)
    bytes32 public hash = keccak256("Hello"); // stores keccak256 hash of "Hello"

    // String: dynamically-sized UTF-8 encoded text
    string public message = "Hello World";

    // ========================================
    // 🧩 ENUM — user-defined type with limited options
    // ========================================
    enum Status { Pending, Approved, Rejected }
    Status public status = Status.Pending; // initial enum value

    // ========================================
    // 🧱 STRUCT — custom complex type grouping variables
    // ========================================
    struct User {
        string name;   // dynamic string field
        uint age;      // unsigned integer field
    }

    // Example struct instance
    User public user = User("Alice", 25);

    // ========================================
    // 🧺 ARRAYS — ordered collections
    // ========================================

    // Fixed-size array (length known at compile time)
    uint[3] public fixedArray = [1, 2, 3];

    // Dynamic array (can grow or shrink at runtime)
    uint[] public dynamicArray;

    // ========================================
    // 🗺️ MAPPINGS — key-value storage (like a dictionary)
    // ========================================

    // Maps an address to a uint balance (cannot be iterated)
    mapping(address => uint) public balances;

    // ========================================
    // ⚙️ CONSTANTS & IMMUTABLES — gas-optimized constants
    // ========================================

    // Constant: fixed value that cannot change after compilation
    uint constant VERSION = 1;

    // Immutable: can be set once in constructor but not changed afterward
    uint immutable DEPLOYED_AT;

    // ========================================
    // 🏗️ CONSTRUCTOR — runs once during deployment
    // ========================================
    constructor() {
        // Assign immutable value
        DEPLOYED_AT = block.timestamp;

        // Add elements dynamically to array
        dynamicArray.push(10);

        // Initialize mapping for deployer
        balances[msg.sender] = 100;
    }
}