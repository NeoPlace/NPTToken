pragma solidity ^0.4.24;


import 'openzeppelin-solidity/contracts/ownership/Ownable.sol';
import 'openzeppelin-solidity/contracts/token/ERC20/StandardToken.sol';
import 'openzeppelin-solidity/contracts/token/ERC20/BurnableToken.sol';

/**
 * NeoPlace Token
 * ERC20 token + Ownable + Burnable
**/

contract NeoPlace is Ownable,StandardToken,BurnableToken {
  
  string public constant name="NeoPlace Token";
  string public constant symbol="NPT";
  uint8 public constant decimals=18;
  
  uint256 public constant INITIAL_SUPPLY = 250000000 * ( 10 ** uint256(decimals) );  
  
  constructor(address neoplace) public {
    owner = neoplace;
    totalSupply_ = INITIAL_SUPPLY;
    balances[neoplace] = totalSupply_;
    emit Transfer(address(0), neoplace, INITIAL_SUPPLY);

  }
  
  function burn(uint256 _value) public onlyOwner {
    super.burn(_value);
  }
  
}

