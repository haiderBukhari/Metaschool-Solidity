require("dotenv").config();
require("@nomiclabs/hardhat-ethers");
const { PRIVATE_KEY } = process.env;
module.exports = {
  solidity: "0.8.19",
  defaultNetwork: "sepolia",
  networks: {
    hardhat: {},
    sepolia: {
      url: {process.env.ETH_HTTPS},
      accounts: [`0x${PRIVATE_KEY}`],
    },
  },
};
