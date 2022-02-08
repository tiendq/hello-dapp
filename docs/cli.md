```bash
eth address:balance 0xb9E27a5bBA4Dfe974adFAdE79B99f84715cfbA70 --network ganache

eth transaction:send --pk key --to 0xe51ea3D582E61B4214F050F4D6f00d19AC0Ef96A --value 10000000000000000000 --network ganache

eth abi:add myFaucet ./build/contracts/MyFaucet.json

eth contract:send --network ganache --pk key myFaucet@0xe51ea3D582E61B4214F050F4D6f00d19AC0Ef96A 'withdraw("1000000000000000000")'

echo $((0x430e23400))
```
