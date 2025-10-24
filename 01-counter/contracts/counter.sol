// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract Counter {

    int256 public value = 0;

    function increment() public {
        value++;
    }

    function decrement() public {
        value--;
    }
}