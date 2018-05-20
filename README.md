# bytes-tests

kovan address: 0x78003a7d48dfc1e1dab28ed2e6a7c66074ae0607

ABI
```
[
	{
		"constant": false,
		"inputs": [
			{
				"name": "target",
				"type": "address"
			},
			{
				"name": "method",
				"type": "bytes4"
			},
			{
				"name": "data",
				"type": "bytes"
			}
		],
		"name": "filterMethod",
		"outputs": [],
		"payable": false,
		"stateMutability": "nonpayable",
		"type": "function"
	},
	{
		"constant": false,
		"inputs": [
			{
				"name": "target",
				"type": "address"
			},
			{
				"name": "data",
				"type": "bytes"
			}
		],
		"name": "forwardCall",
		"outputs": [],
		"payable": false,
		"stateMutability": "nonpayable",
		"type": "function"
	},
	{
		"constant": false,
		"inputs": [
			{
				"name": "target",
				"type": "address"
			},
			{
				"name": "data",
				"type": "bytes"
			}
		],
		"name": "forwardSig",
		"outputs": [],
		"payable": false,
		"stateMutability": "nonpayable",
		"type": "function"
	},
	{
		"constant": false,
		"inputs": [
			{
				"name": "target",
				"type": "address"
			},
			{
				"name": "functionName",
				"type": "bytes"
			},
			{
				"name": "data",
				"type": "bytes"
			}
		],
		"name": "keccakInput",
		"outputs": [
			{
				"name": "method",
				"type": "bytes4"
			}
		],
		"payable": false,
		"stateMutability": "nonpayable",
		"type": "function"
	},
	{
		"constant": false,
		"inputs": [
			{
				"name": "_exchange",
				"type": "address"
			}
		],
		"name": "setExchange",
		"outputs": [],
		"payable": false,
		"stateMutability": "nonpayable",
		"type": "function"
	},
	{
		"constant": false,
		"inputs": [
			{
				"name": "target",
				"type": "address"
			},
			{
				"name": "shaOfFunction",
				"type": "bytes32"
			},
			{
				"name": "data",
				"type": "bytes"
			}
		],
		"name": "shaInput",
		"outputs": [
			{
				"name": "method",
				"type": "bytes4"
			}
		],
		"payable": false,
		"stateMutability": "nonpayable",
		"type": "function"
	},
	{
		"payable": false,
		"stateMutability": "nonpayable",
		"type": "fallback"
	},
	{
		"constant": true,
		"inputs": [],
		"name": "exchange",
		"outputs": [
			{
				"name": "",
				"type": "address"
			}
		],
		"payable": false,
		"stateMutability": "view",
		"type": "function"
	},
	{
		"constant": true,
		"inputs": [],
		"name": "getExchange",
		"outputs": [
			{
				"name": "",
				"type": "address"
			}
		],
		"payable": false,
		"stateMutability": "view",
		"type": "function"
	}
]
```
