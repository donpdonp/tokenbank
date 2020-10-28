// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.4 <0.8.0;

contract Timelock {

  mapping (address => mapping (address => uint)) public balances;

  function addCoin(address erc20, uint256 amount) public {
    balances[msg.sender][erc20] += amount;
  }

  function takeCoin(address erc20, uint256 amount) public {
    require(amount <= balances[msg.sender][erc20], "insufficient balance for erc20 token");
    balances[msg.sender][erc20] -= amount;
  }

  function balance(address erc20) external view returns (uint256) {
    return balances[msg.sender][erc20];
  }
}

