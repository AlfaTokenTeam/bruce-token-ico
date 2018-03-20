pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract BruceToken is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function BruceToken(address _owner)  UpgradeableToken(_owner) {
    name = "BruceToken";
    symbol = "bru";
    totalSupply = 10000000000000000;
    decimals = 8;

    balances[_owner] = totalSupply;
  }
}