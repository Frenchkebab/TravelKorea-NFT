require('dotenv').config();
require('@nomicfoundation/hardhat-toolbox');

/** @type import('hardhat/config').HardhatUserConfig */
module.exports = {
  solidity: '0.8.7',
  networks: {
    rinkeby: {
      url: process.env.RINKEBY_URL || '',
      accounts:
        process.env.RINKEBY_PRIVATE_KEY !== undefined
          ? [process.env.RINKEBY_PRIVATE_KEY]
          : [],
    },
  },
  etherscan: {
    apiKey: process.env.ETHERSCAN_API,
  },
};
