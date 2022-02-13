// https://eth-ropsten.alchemyapi.io/v2/l5U0Jb4bcO1LoIF3knL_OE1AkHxu4yUb

require('@nomiclabs/hardhat-waffle');

module.exports = {
  solidity : '0.8.0',
  networks: {
    ropsten: {
      url: 'https://eth-ropsten.alchemyapi.io/v2/l5U0Jb4bcO1LoIF3knL_OE1AkHxu4yUb',
      accounts: ['4233d892a7ab22da4f6beb825b177feb1d65eb94ea15f1ae8987678bcd74a726'],
    }
  }
}