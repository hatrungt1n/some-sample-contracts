# Some sample contracts
## Usage

```sh
$ yarn install
```

### Compile

Compile the smart contracts with Hardhat:

```sh
$ yarn compile
```

### TypeChain

Compile the smart contracts and generate TypeChain bindings:

```sh
$ yarn typechain
```

<!-- ### Test

Run the tests with Hardhat:

```sh
$ yarn test
``` -->

### Lint Solidity

Lint the Solidity code:

```sh
$ yarn lint:sol
```

### Lint TypeScript

Lint the TypeScript code:

```sh
$ yarn lint:ts
```

<!-- ### Coverage

Generate the code coverage report:

```sh
$ yarn coverage
``` -->

<!-- ### Report Gas

See the gas usage per unit test and average gas per method call:

```sh
$ REPORT_GAS=true yarn test
``` -->

### Clean

Delete the smart contract artifacts, the coverage reports and the Hardhat cache:

```sh
$ yarn clean
```

### Deploy

Deploy the contracts to Sepolia Network:

```sh
$ yarn deploy:sepolia
```

### Verify

Verify the contracts in Sepolia Network:

```sh
$ yarn verify:sepolia
```

## License

This project is licensed under MIT.
