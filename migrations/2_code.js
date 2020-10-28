const TL = artifacts.require("Timelock");

module.exports = function(deployer) {
  deployer.deploy(TL);
};
