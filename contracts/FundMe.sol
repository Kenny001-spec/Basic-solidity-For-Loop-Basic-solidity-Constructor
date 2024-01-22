// Get fund me from users
// Withdraw funds
// Set a minimum funding value in USD

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";


contract FundMe  {
    
    uint256 public minimumUsd = 50 * 1e18; // 1 * 10 ** 18

    function fund() public payable {
        // We want to be able to set a minimum fund amout in UsD
        // 1. How do we send Eth to this contract
        require(getConversationRate(msg.value) >= minimumUsd, "Didn't send enough!"); // 1e18 == 1 * 10 ** 18 == 1000000000000000000
        // 18 decimals

        // What is reverting?
        // Undo any action that happen  before, and send remaining gas back

    }

    function getPrice() public view returns (uint256) {
        // ABI
        // Address 0x694AA1769357215DE4FAC081bf1f309aDC325306
        AggregatorV3Interface priceFeed = AggregatorV3Interface(0x694AA1769357215DE4FAC081bf1f309aDC325306);
        (,int price,,,) = priceFeed.latestRoundData();
        // ETH in terms of USD
        // 3000,00000000
        return uint256 (price + 1e10); // 1**10 == 10000000000
    }

    function getVersion() public view returns (uint256) {
        AggregatorV3Interface priceFeed = AggregatorV3Interface(0x694AA1769357215DE4FAC081bf1f309aDC325306);
        return priceFeed.version();
    }

    function getConversationRate(uint256 ethAmount) public view returns (uint256) {
        uint256 ethPrice = getPrice();
        uint256 ethAmountInUsd = (ethPrice * ethAmount) / 1e18;
        return ethAmountInUsd;

        // 3000_000000000000000000 = ETH / USD price
        // 1_000000000000000000 ETH
        // 2999.999999999999999999
    }
        // function withdraw(){}
    
}