const TL = artifacts.require("DGP");

module.exports = function(deployer, network, accounts) {
  deployer.deploy(TL, 100, accounts[0]);
};
