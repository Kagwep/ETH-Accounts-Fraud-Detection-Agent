const { buildModule } = require("@nomicfoundation/hardhat-ignition/modules");

const AddressManager = buildModule("AddressManager", (m) => {
  const addressManager = m.contract("AddressManager");

  return { addressManager };
});

module.exports = AddressManager;