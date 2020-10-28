// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.4 <0.8.0;

import "./Token.sol";

contract DGP is Token {
    constructor(uint256 initialSupply, address account) {
      tokenName = "DGP Coin";
      tokenSymbol = "DGP";
      tokenTotalSupply = initialSupply;
      balances[account] = tokenTotalSupply;
    }
}
