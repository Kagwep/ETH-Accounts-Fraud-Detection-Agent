const { expect } = require("chai");

describe("AddressManager", function() {
  let addressManager;
  let accounts;

  beforeEach(async function() {
    const AddressManager = await ethers.getContractFactory("AddressManager");
    addressManager = await AddressManager.deploy();
    await addressManager.deployed();

    accounts = await ethers.getSigners();
  });

  describe("Store and retrieve addresses", function() {
    it("Should store a new address and remain unmarked", async function() {
      const testAddress = accounts[1].address;

      await addressManager.storeAddress(testAddress);
      const unmarkedAddresses = await addressManager.getUnmarkedAddresses();

      expect(unmarkedAddresses).to.include(testAddress);
    });

    it("Should mark an address as possible fraud and not list it as unmarked", async function() {
      const testAddress = accounts[2].address;

      await addressManager.storeAddress(testAddress);
      await addressManager.markAsPossibleFraud(testAddress);
      const unmarkedAddresses = await addressManager.getUnmarkedAddresses();

      expect(unmarkedAddresses).to.not.include(testAddress);
    });

    it("Should mark an address as good and not list it as unmarked", async function() {
      const testAddress = accounts[3].address;

      await addressManager.storeAddress(testAddress);
      await addressManager.markAsGood(testAddress);
      const unmarkedAddresses = await addressManager.getUnmarkedAddresses();

      expect(unmarkedAddresses).to.not.include(testAddress);
    });
  });
});
