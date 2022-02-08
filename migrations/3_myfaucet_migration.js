const Migrations = artifacts.require("MyFaucet");

module.exports = function (deployer) {
  deployer.deploy(Migrations);
};
