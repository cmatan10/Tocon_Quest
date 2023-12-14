
## Table of Contents
- [Demo](#demo)
- [How to Play](#how-to-play)
- [Features](#features)
- [Vision](#vision)
- [Solutions](#solutions)
  ---

## Demo

https://quest.tocon.io

https://www.xrpl-tocon.xyz/xrpl-demo.mp4

---

## How to Play
- **Mini Games / Challenges**: Each mini-game represents a unique challenge where you'll deploy a smart contract reflecting one or more fundamental concepts of Solidity.
- **Solve the Challenges**: Call functions correctly and provide the right parameters to solve the mini-games.
---

## Features
- **Interactive Learning**: Engage in hands-on learning by deploying and interacting with smart contracts.
- **Comprehensive Challenges**: Each mini-game is designed to test and enhance your understanding of specific Solidity concepts.

---

## Vision
The potential of **ToconQuest** extends beyond just a game. We envision this system being utilized for:
- **Educational Purposes**: A revolutionary tool for institutions aiming to teach Solidity and blockchain concepts.
- **Hiring Mechanisms**: A unique filter to assess the practical skills of potential hires in the blockchain domain.

---

## Solutions:

### Byte2 Learning Lab:
- Any number between `0x0000` and `0xFFFF` can be entered in the `_biggerNum` input box. 
- Press the `increaseNum` button and confirm the transaction.

---

### Fallback Learning Lab:
- Copy the smart contract address code and paste it into a new file in the Remix IDE.
- In Remix IDE, click the `Deploy & RUN TRANSACTIONS` tab, then click the select box under the `ENVIRONMENT` heading and select the `Injected Provider: MetaMask` option. 
- Copy the smart contract address, which is under the heading `Your Test Address`, navigate to Remix IDE, and paste the contract address in the `At Address` input box. Next, click the `At Address` button to enable access to the deployed smart contract's user interface.
- Now click on the newly created tab under the heading `Deployed Contracts`, then click on the `Transact` button, which is under the heading `CALLDATA` and confirm the transaction. (To verify that the transaction was successfully completed, click the `FixMe` button in Remix IDE or on the game website and check that the value has changed to true.)
- Navigate to the game site and click the `Submit` button.

---

### Balance Learning Lab:
- Select a wallet address or contract address and copy it (don't select your wallet address as your wallet balance will change once you call the function).
- Enter the address you copied into the `_account` input box.
- Open the code editor you use and create an index.js file with the following code:
``` javascript
const Web3 = require('web3');
const https = '<your-rpc-provider>';
const web3 = new Web3(https);

async function balance(){
const bal = await web3.eth.getBalance("<paste-address-here>")
console.log(bal);
  }
balance()

```
- Replace the <paste-address-here> with the address that you copied and run the script.
- Copy the balance from the terminal.
- Navigate to the game site and enter the balance you copied into the `_amount` input box.
- Press the `checkBalance` button and confirm the transaction.

---

### Wei Learning Lab:
- Copy the smart contract code address and paste it into a new file in the Remix IDE.
- In Remix IDE, click the `DEPLOY & RUN TRANSACTIONS` tab, then click the select box under the `ENVIRONMENT` heading and select the `Injected Provider: MetaMask` option. (Make sure the digital wallet is set to chain 1440002).
- Copy the smart contract address, which is under the heading `Your Test Address`, navigate to Remix IDE, and paste the contract address in the `At Address` input box. Next, click the `At Address` button to enable access to the deployed smart contract's user interface.
- Enter the number 1 in the input box under the heading `VALUE`, ensuring that the ETHEREUM UNIT is set to Wei.
- Now click on the newly created tab under the heading `Deployed Contracts`, then click on the `Transact` button under the heading `CALDATA` and confirm the transaction. (To verify that the transaction was successfully completed, note that the amount of ETH sent to the contract is equal to Balance: 0.000000000000000001 ETH.)
- Navigate to the game site and click the `Submit` button.

---

### Timestamp Learning Lab:
- Click the hint button and copy the hash that represents the newly deployed contract, and paste it into the search box on the block explorer.
- Copy the block number.
- Open the code editor you use and create an index.js file with the following code:
```javascript
const Web3 = require('web3');
const https = '<your-rpc-provider>';
const web3 = new Web3(https);
web3.eth.getBlock("<Block-Number>",console.log)
```
- Replace `<Block-Number>` with the block number you copied.
- Run the script and copy the timestamp from the received output.
- Navigate to the game site, enter the timestamp you copied into the `_Timestamp` input box, and press the `timeReset` button, then confirm the transaction.

---

### Gas Learning Lab:
1. **Base Gas Consumption (Overhead)**:  When the complexOperation function is called with the argument `0`, it consumes a certain amount of gas, let's call it `x` units. This `x` represents the base gas cost for executing the function without entering the loop. This includes the cost of reading and writing to storage, and other computational overheads.
2. **Gas Consumption for a Single Iteration**: When you invoke the function with an argument of `1`, it results in a gas consumption of `y` units. This includes the base gas cost `x` plus the gas cost of one iteration of the loop.

Using the above data:
```
Gas Per Iteration = y - x = z units
```
To find the average gas consumption between 3000 and 5000:
```
Average Gas Consumption = (3000 + 5000) / 2 = 4000 units
```
Applying this to our function's gas consumption pattern:
```
x + z*n = 4000
=> z*n = 4000 - x
=> n ≈ (4000 - x) / z
```
Thus, it is deduced that about `n` iterations are requisite to approach an average gas consumption of 4000 units.
- Enter the number `n` in the `iterations` input box.
- Click the `complexOperation` button and confirm the transaction.
---

### Password Learning Lab:
- Copy the smart contract address, which is under the heading `Your Test Address`.
- Open the code editor you use and create an index.js file with the following code:
```javascript
const Web3 = require('web3');
const https = '<your-rpc-provider>';
const web3 = new Web3(https);
web3.eth.getStorageAt("<contract-address>",0,console.log)
```
- Replace `<contract-address>` with the smart contract address you copied.
- Run the script and copy the hexadecimal number from the received output.
- Enter the hexadecimal number in the input box `_password`.
- Enter any number in the `newPassword` input box.
- Click the `changePassword` button and confirm the transaction.

---

### Overflow Learning Lab:
(type(uint256).max) = Max


`(counter = Max - 3)[---------(counter + 3 = Max)---(counter + 4 = 0)---------](counter + 7 = 3)`


When the `counter` starts at `Max - 3`, the overflow logic is:

1. When `3` uints are added to the counter, it reaches `Max`.
2. Adding to the starting value `4` causes an overflow, resetting the counter to `0`.
3. If `7` is added to the starting value, the counter wraps around and becomes `3`.

- Enter the number 7 in the `value` input box.
- Click the `add` button and confirm the transaction.

---

### BlockHash Learning Lab:
- Click the hint button, copy the hash that represents the newly deployed contract, and paste it into the search box on the block explorer.
- Click on the block number.
- Copy the block number.
- Navigate to the game site and enter the block number you copied into the `blockNumber` input box.
- Copy the hash that represents the block.
- Navigate to the game site and enter the hash you copied into the `blockHash` input box.
- Click the `blockHashCheck` button and confirm the transaction.

---

### Signature Learning Lab:
- Copy the following code and paste it into a new file in the Remix IDE:
```javascript
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;
contract Result {
      function res() public pure returns(bytes4){
        return bytes4(keccak256("CalcMe(bytes4)"));
    }
}
```
- Deploy the `Result` contract.
- Call the `res` function and copy the `bytes4` value that you received.
- Navigate back to the game site and paste the value in the `ID` input box.
- Press the `CalcMe` button and confirm the transaction.

---

### Encode Data Learning Lab:
- Copy the following code and paste it into a new file in the Remix IDE:
```javascript
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;
contract Result {
    function res() public pure returns (bytes memory){
        bytes memory encodedData = abi.encode("WEB", 3);
        return encodedData;
    }
}
```
- Deploy the `Result` contract.
- Call the `res` function and copy the `encodedData` value that you received.
- Navigate back to the game site and paste the value in the `encodedData` input box.
- Click the `encode` button and confirm the transaction.

---

### Hash Learning Lab:
- Copy the following code and paste it into a new file in the Remix IDE:
```javascript
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;
contract Result {
    function res() public pure returns (bytes memory secret) {
        secret = abi.encodePacked(sha256("secret"));
        return secret;
    }
}
```
- Deploy the `Result` contract.
- Call the `res` function and copy the `secret` value that you received.
- Navigate back to the game site and paste the value in the `guess` input box.
- Click the `findCollision` button and confirm the transaction.

---

### Decode Data Learning Lab:
- Copy the following code and paste it into a new file in the Remix IDE:
```javascript
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;
contract Result {
    bytes public encodeStringAndUint = hex"00000000000000000000000000000000000000000000000000000000000000400000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000b4920416d204e756d626572000000000000000000000000000000000000000000";
    function res() public view returns (string memory, uint256){
        (string memory decodedStr, uint256 decodedNum) = abi.decode(
            encodeStringAndUint,
            (string, uint256)
        );
        return (decodedStr, decodedNum);
    }
}
```
- Deploy the `Result` contract.
- Call the `res` function and copy the `string` value and the `uint256` value that you received.
- Navigate back to the game site, paste the `string` value in the `_str` input box and the `uint256` value in the `_num` input box. 
- Press the `decode` button and confirm the transaction.

---

### Contract Learning Lab:
- Copy the smart contract address, which is under the heading `Your Test Address` and paste it in the input box `_addr`.
- Enter the number 1 in the `_sal` input box.
- Press the `bytecode` button and copy the bytecode that appears on the screen.
- Paste the bytecode in the `_bytecode` input box.
- Click the `checkAddress` button and copy the smart contract address that appears on the screen.
- Paste the smart contract address in the `_add` input box.
- Click the `deploy` button and confirm the transaction.

---

### Interface Learning Lab:
- Copy the following code and paste it into a new file in the Remix IDE:
```javascript
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;
contract Result{
    bytes4 public res = bytes4(keccak256("calcFunc1(uint)")) 
        ^ bytes4(keccak256("calcFunc2(bool)")) 
        ^ bytes4(keccak256("calculateXOR(bytes4)"));
}
```
- Deploy the `Result` contract.
- Read the `res` state variable and copy the `bytes4` value that you received.
- Navigate back to the game site and paste the value in the `ID` input box.
- Click the `calculateXOR` button and confirm the transaction.

---

### Ticket Learning Lab:
- Copy the smart contract address, which is under the heading `LimitedTickets Address` and paste it in the input box `_target`.
- Copy your digital wallet address (which appears in the navbar) and paste it into the `attacker` input box.
- Enter the number 3 in the `ticketAmount` input box.
- Press the `attack` button and confirm the transaction (do it twice).
- Click the `Submit` button and confirm the transaction.

---

### Random Number Learning Lab:
- Copy the smart contract address, which is under the heading `EducatedGuess Address`, and paste it in the `_target` input box.
- Copy the smart contract address, which is under the heading `HackEducatedGuess Address` and paste it into the `attackerContract` input box.
- Enter the number 1000 in the `num` input box.
- Click the `attack` button and confirm the transaction.
- Click the `Submit` button and confirm the transaction.

---

