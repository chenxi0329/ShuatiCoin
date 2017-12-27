const ShuatiCoinICO = artifacts.require('ShuatiCoinICO')
module.exports = function(deployer, network, accounts) {
    const startTime = web3.eth.getBlock(web3.eth.blockNumber).timestamp + 1
    const endTime = startTime + (60 * 60 * 24 * 7) 
    const rate = new web3.BigNumber(1000)
    const wallet = accounts[0]
    deployer.deploy(ShuatiCoinICO, startTime, endTime, rate, wallet)
};
