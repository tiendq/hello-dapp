// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract HelloWorld {
  string public greeting = 'hello';
  uint public constant GREETING_COUNT = 0;
  address public immutable deployer;

  constructor() {
    deployer = msg.sender;
  }

  function sayHello() external view returns (string memory) {
    return string(abi.encodePacked(greeting, ' from ', abi.encodePacked(deployer)));
  }

  function updateGreeting(string calldata _greeting) external {
    greeting = _greeting;
  }
}
