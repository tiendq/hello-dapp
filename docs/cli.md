```bash
eth address:balance 0xC169fb1dD592ad02190Ff99dd595BFa57a2517A3 --network ganache

eth transaction:send --pk 9627b3dd789f8fce55c03f6781fdb5a202d584be7f7511e50f4183e42b56b728 --to 0xC169fb1dD592ad02190Ff99dd595BFa57a2517A3 --value 10000000000000000000 --network ganache

eth abi:update myFaucet ./build/contracts/MyFaucet.json

eth contract:send --network ganache --pk 4a2ef800121e51fe4780982e9e9796f785f907465b11c33dc1f81a2d127b586b myFaucet@0xC169fb1dD592ad02190Ff99dd595BFa57a2517A3 'withdraw("1000000000000000000")'

eth contract:call --network ganache myFaucet@0xC169fb1dD592ad02190Ff99dd595BFa57a2517A3 'lastWithdrawal()'

echo $((0x430e23400))
```
