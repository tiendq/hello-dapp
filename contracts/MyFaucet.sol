// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract MyFaucet {
  address private immutable owner;
  address private _lastDeposit;
  address private _lastWithdrawal;

  event Withdrawal(address indexed _to, uint _amount);
	event Deposit(address indexed _from, uint _amount);

  constructor() {
    owner = msg.sender;
  }

  modifier isOwner {
    require(msg.sender == owner, 'Only the contract owner can call this function');
    _;
  }

  // Accept any incoming amount.
  receive() external payable {
    _lastDeposit = msg.sender;
    emit Deposit(_lastDeposit, msg.value);
  }

  function withdraw(uint _amount) public {
    // require(_amount <= 1000000000000000000);
    require(_amount <= 1 ether);
    require(address(this).balance >= _amount, 'Insufficient balance in faucet for withdrawal request');

    _lastWithdrawal = msg.sender;
    payable(_lastWithdrawal).transfer(_amount);
    emit Withdrawal(_lastWithdrawal, _amount);
  }

  function lastDeposit() public view isOwner returns (address) {
    return _lastDeposit;
  }

  function lastWithdrawal() public view isOwner returns (address) {
    return _lastWithdrawal;
  }
}
