pragma solidity ^0.4.4;
import './ShuatiCoin.sol';
import '../zeppelin-solidity/contracts/crowdsale/Crowdsale.sol';

contract ShuatiCoinICO is Crowdsale {

	function ShuatiCoinICO(uint256 _startTime, uint256 _endTime, uint256 _rate, address _wallet) Crowdsale(_startTime, _endTime, _rate, _wallet) public {          
	}

	function createTokenContract() internal returns(MintableToken) {
		return new ShuatiCoin();
	}

}
