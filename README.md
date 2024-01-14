# YTC
Blockchain YT.

# Usage
This smart contract defines an ERC-20 token named "AITU Sayed" with the symbol "YTC". ERC-20 is a standard interface for fungible tokens on the Ethereum blockchain. It includes basic functionalities like transferring tokens, checking balances, and approving spending of tokens.

# Prerequisites
Solidity Version: The code specifies that it should be compiled using Solidity version 0.8.20 or higher.

OpenZeppelin Contracts: The code imports the ERC20.sol contract from the OpenZeppelin library. OpenZeppelin is a widely-used library for secure and community-vetted smart contracts on the Ethereum blockchain. Make sure you have the OpenZeppelin library available in your project.

# Functions 
Contract Inheritance:

The contract AITO_SAYED inherits from the ERC20 contract. This means that AITO_SAYED has all the functionalities provided by the ERC20 contract.
Event Declaration:

The contract declares an event named TransferInfo, which logs information about token transfers. The event includes the timestamp, sender's address, receiver's address, and the amount transferred.
Constructor:

The constructor function is executed only once when the contract is deployed. It sets initial values for the token, including the name ("AITU Sayed"), symbol ("YTC"), and initial supply.
Minting Tokens:

The _mint function is called within the constructor to mint 2000 * 10^18 (2000 with 18 decimal places) tokens and assign them to the address that deployed the contract (msg.sender).



