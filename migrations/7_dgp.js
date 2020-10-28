const TL = artifacts.require("DGP");

module.exports = function(deployer) {
  deployer.deploy(TL, 100);
};
