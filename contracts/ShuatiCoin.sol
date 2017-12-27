pragma solidity ^0.4.4;
import '../zeppelin-solidity/contracts/token/MintableToken.sol';

contract ShuatiCoin is MintableToken {
    string public name = "Shuati Coin";
    string public symbol = 'SHC';
    uint8 public decimal = 10;
}
