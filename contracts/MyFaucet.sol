// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract MyFaucet {
  constructor() {
  }

  receive () external payable {}

  function withdraw(uint _amount) public {
    require(_amount <= 1000000000000000000);
    payable(msg.sender).transfer(_amount);
  }
}
