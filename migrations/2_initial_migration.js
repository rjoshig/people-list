const ConvertLib = artifacts.require("ConvertLib");
const Escrow = artifacts.require("People");

module.exports = function(deployer) {
  deployer.deploy(ConvertLib);
  deployer.link(ConvertLib, People);
  deployer.deploy(People);
};
