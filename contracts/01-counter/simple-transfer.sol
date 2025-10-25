// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract SimpleTransfer {
    // Function that transfers `amount` wei to address `to`
    function transferTo(address payable to, uint256 amount) public payable {
        to.transfer(amount);
    }

    // Allow contract to receive ETH
    receive() external payable {}

    function getBalance() public view returns (uint256) {
        return address(this).balance;
    }
}
