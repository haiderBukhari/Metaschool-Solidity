async function main() {
  const HelloWorld = await ethers.getContractFactory("HelloWorld");
  console.log("Deploying Contract...", HelloWorld)
  const helloWorld = await HelloWorld.deploy("Haider");
  const txHash = helloWorld.deployTransaction.hash;
  const txReceipt = await ethers.provider.waitForTransaction(txHash);
  console.log("Contract deployed to address:",  txReceipt.contractAddress);
}

// We recommend this pattern to be able to use async/await everywhere
// and properly handle errors.
main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });
