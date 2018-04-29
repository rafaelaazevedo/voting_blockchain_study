# Voting Blockchain Study

## Dependencies

* ethereumjs-testrpc 
* web3
* solc
* ganache


## Run

````
npm install 
````

## Usage

After all dependencies are installed, run the service with:

````
node_modules/ethereumjs-testrpc/build/cli.node.js
````


Run the following commands to open the node console then deploy your contract to the test chain

````
rafazzevedo:~/voting_blockchain_study$ node
> Web3 = require('web3')
> web3 = new Web3(new Web3.providers.HttpProvider("http://localhost:8545"));
> code = fs.readFileSync('voting.sol').toString()
> solc = require('solc')
> compiledCode = solc.compile(code)
> abiDefinition = JSON.parse(compiledCode.contracts[':Voting'].interface)
> VotingContract = new web3.eth.Contract(abiDefinition)
> byteCode = compiledCode.contracts[':Voting'].bytecode
> deployedContract = VotingContract.new(['Rama','Nick','Jose'],{data: byteCode, from: web3.eth.getAccounts[0], gas: 4700000})
> deployedContract.address
> contractInstance = VotingContract.at(deployedContract.address)
````