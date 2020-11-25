const Migrations = artifacts.require("Migrations");
const contract = artifacts.require("TokenBank");

module.exports = function(deployer) {
  deployer.deploy(Migrations);
  deployer.deploy(contract);
};
