// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.4 <0.8.0;

import "./erc20/ERC20.sol";

contract TokenBank {

  mapping (address => mapping (address => uint)) public balances;

  function addCoin(address erc20, uint256 amount) public {
    ERC20 token = ERC20(erc20);
    token.transferFrom(msg.sender, address(this), amount);
    balances[msg.sender][erc20] += amount;
  }

  function totalBalance(address erc20) public view returns (uint256) {
    ERC20 token = ERC20(erc20);
    uint256 balance = token.balanceOf(address(this));
    return balance;
  }

  function takeCoin(address erc20, uint256 amount) public {
    require(amount <= balances[msg.sender][erc20], "insufficient balance for erc20 token");
    balances[msg.sender][erc20] -= amount;
  }
}

