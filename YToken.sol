// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract AITO_SAYED is ERC20 {
    event TransferInfo(uint256 timestamp, address sender, address receiver, uint256 amount);

    constructor() ERC20("AITU Sayed", "AITU") {
        _mint(msg.sender, 2000 * 10**18); // Initial supply
    }

    function getTransactionSenderAddress() external view returns (address) {
        return msg.sender;
    }

    function getTransactionReceiverAddress() external view returns (address) {
        return address(this);
    }

    function getLatestTransactionTimestamp() external view returns (uint256) {
        require(totalSupply() > 0, "No transactions have occurred yet");
        return block.timestamp;
    }

    function transfer(address recipient, uint256 amount) public override returns (bool) {
        bool success = super.transfer(recipient, amount);
        if (success) {
            emit TransferInfo(block.timestamp, msg.sender, recipient, amount);
        }
        return success;
    }

    function transferFrom(address sender, address recipient, uint256 amount) public override returns (bool) {
        bool success = super.transferFrom(sender, recipient, amount);
        if (success) {
            emit TransferInfo(block.timestamp, sender, recipient, amount);
        }
        return success;
    }
}
