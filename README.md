# ShuatiCoin
An open source cryptocurrency

## Get Started:
Install dependecies
```
npm install -g ethereumjs-testrpc
npm install -g truffle
```
Start local test chain by running following command 
```
testrpc -u 0
```
Launch truffle console
```
truffle console
```
## Console commands:
Assign contract buyer
```
userIndex = 5
buyer = web3.eth.accounts[userIndex]
```
Deploy contract
```
ShuatiCoinICO.deployed().then(inst => { ICO = inst })
```
Get contract address
```
ICO.token().then(addr => { contractAddress = addr } )
```
Get ShuatiCoin instance
```
shuatiCoinInstance = ShuatiCoin.at(contractAddress)
```
Check someone's ShuatiCoin balance
```
someone = buyer
//display with all decimals
shuatiCoinInstance.balanceOf(someone).then(balance => shuatiCoinBalance = balance.toString(10))
//display without decimals
web3.fromWei(shuatiCoinBalance, "ether")
```
Buy ShuatiCoin
```
buyer = buyer
money = 5
ShuatiCoinICO.deployed().then(inst => inst.sendTransaction({ from: buyer, value: web3.toWei(money, "ether")}))
```