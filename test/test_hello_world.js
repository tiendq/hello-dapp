const TestHelloWorld = artifacts.require("TestHelloWorld");

/*
 * uncomment accounts to access the test accounts made available by the
 * Ethereum client
 * See docs: https://www.trufflesuite.com/docs/truffle/testing/writing-tests-in-javascript
 */
contract("TestHelloWorld", function (/* accounts */) {
  it("should assert true", async function () {
    await TestHelloWorld.deployed();
    return assert.isTrue(true);
  });
});
