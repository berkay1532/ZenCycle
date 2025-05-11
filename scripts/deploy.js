const hre = require("hardhat");

async function main() {
  const Registry = await hre.ethers.getContractFactory("ScoreRegistry");
  const registry = await Registry.deploy();
  await registry.waitForDeployment();
  console.log(`ScoreRegistry deployed to: ${await registry.getAddress()}`);
}

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});

// ca: 0xF2D1911210fc9Ac24671EDcfD2cB15D20F9AEE47
