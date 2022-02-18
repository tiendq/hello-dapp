const Migrations = artifacts.require("BlackCow");

module.exports = function (deployer) {
  deployer.deploy(Migrations);
};
