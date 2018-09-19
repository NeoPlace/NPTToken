var Transaction = artifacts.require("./NeoPlace.sol");

module.exports = function(deployer) {
  deployer.deploy(Transaction);
};
