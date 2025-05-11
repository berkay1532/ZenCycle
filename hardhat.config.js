require("@oasisprotocol/sapphire-hardhat");
require("@nomicfoundation/hardhat-toolbox");
require("dotenv").config();

module.exports = {
  solidity: "0.8.20",
  networks: {
    "sapphire-testnet": {
      url: "https://testnet.sapphire.oasis.io",
      accounts: [process.env.PRIVATE_KEY],
      chainId: 23295, // Sapphire testnet
    },
  },
};
