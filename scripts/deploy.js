const hre = require('hardhat');

async function main() {
  const TravelSeoul = await hre.ethers.getContractFactory('TravelSeoul');
  const travelSeoul = await travelSeoul.deploy();

  await travelSeoul.deployed();

  console.log('Contract deployed to:', travelSeoul.address);
}

// We recommend this pattern to be able to use async/await everywhere
// and properly handle errors.
main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
