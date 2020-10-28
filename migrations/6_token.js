const TL = artifacts.require("Token");

module.exports = function(deployer) {
  deployer.deploy(TL, 100);
};
