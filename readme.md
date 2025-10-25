# 📘 Solidity Data Types — Quick Reference

Solidity is a **statically-typed language**, meaning every variable must have a declared type.  
This cheat sheet summarizes all **core types**, **reference types**, and **data locations** used in Solidity (v0.8+).

---

## 🧮 1. Value Types
Stored directly in memory or stack. They hold their own value.

| Category | Type | Example | Notes |
|-----------|------|----------|-------|
| **Boolean** | `bool` | `bool isActive = true;` | Logical true/false |
| **Unsigned Integers** | `uint8` → `uint256` | `uint256 count = 10;` | Default is `uint256` |
| **Signed Integers** | `int8` → `int256` | `int16 temp = -20;` | Default is `int256` |
| **Address** | `address` | `address owner = msg.sender;` | 20-byte Ethereum address |
| **Payable Address** | `address payable` | `payable(owner).transfer(1 ether);` | Can receive Ether |
| **Fixed-size Bytes** | `bytes1` → `bytes32` | `bytes32 hash = keccak256("data");` | For hashes / raw data |
| **Enum** | `enum Status { Pending, Shipped, Delivered }` | `Status s = Status.Pending;` | User-defined constants |
| **Fixed / Ufixed** | `fixed`, `ufixed` | 🚫 *Not yet implemented* | Planned for decimals |

---

## 🧱 2. Reference Types
Store **references (pointers)** to data — you must specify data location.

| Category | Type | Example | Notes |
|-----------|------|----------|-------|
| **Static Array** | `uint[3] numbers;` | Fixed length |
| **Dynamic Array** | `uint[] numbers; numbers.push(5);` | Variable length |
| **String** | `string name = "Alice";` | UTF-8 text |
| **Dynamic Bytes** | `bytes data = "abc";` | Raw byte array |
| **Struct** | `struct User { string name; uint balance; }` | Grouped variables |
| **Mapping** | `mapping(address => uint) balances;` | Key–value store |

---
