const { buildModule } = require("@nomicfoundation/hardhat-ignition/modules");

module.exports = buildModule("DegenGameTokenModule", (m) => {

  const token = m.contract("DegenGameToken",[]);

  return { token };
});
