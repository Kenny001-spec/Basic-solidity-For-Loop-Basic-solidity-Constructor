// Get funds from users
// Withdraw funds
// Set a minimum funding value in USD

// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "./PriceConverter.sol";

contract FundMe {
    using PriceConverter for uint256;

    uint256 public minimumUsd = 50 * 1e18; // 1 * 10 ** 18;

    address[] public  funders;
    mapping(address => uint256) public addressToAmountFunded;

    address public owner;

    constructor() {
        owner = msg.sender;
    }


    function fund() public payable {
        // Want to be able to start a minimum fund amount in USD
        // 1. How do we send ETH to this contract
        require(msg.value.getConversionRate() >= minimumUsd, "Didn't send enough!");
        funders.push(msg.sender);
        addressToAmountFunded[msg.sender] = msg.value;
    } 

        // Basic solidity For Loop
        // A for loop is a way to loop through some type of index object or a range of Numbers
    function withdraw() public  {

        /* Starting index, ending index, step amount */  
        for (uint256 funderIndex = 0; funderIndex < funders.length; funderIndex = funderIndex++) {
            // code
            address funder = funders[funderIndex];
            addressToAmountFunded[funder] = 0;
        }
        // Reset the array
        funders = new address[](0);
        // Actually withdraw the funds

        // 3 different way to Send ETH from a contract
        // Transfer
        payable(msg.sender).transfer(address(this).balance);
        // send
        bool sendSuccess = payable(msg.sender).send(address(this).balance);
        require(sendSuccess, "send failed");
        // call
        (bool callSuccess, ) = payable(msg.sender).call{value: address(this).balance}("");
        require(callSuccess, "call failed");
        // msg.sender = address
        // payable(msg.sender) = payable address
        
    }

    

}