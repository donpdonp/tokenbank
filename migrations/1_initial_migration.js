const Migrations = artifacts.require("Migrations");
const TL = artifacts.require("Timelock");

module.exports = function(deployer) {
  deployer.deploy(Migrations);
  deployer.deploy(TL);
};
