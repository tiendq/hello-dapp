```bash
eth address:balance 0x8FC444a3509201AbC76E3bAA53A58e3Bbd08d2c3 --network ganache

eth transaction:send --pk 9627b3dd789f8fce55c03f6781fdb5a202d584be7f7511e50f4183e42b56b728 --to 0xC169fb1dD592ad02190Ff99dd595BFa57a2517A3 --value 10000000000000000000 --network ganache

eth abi:update myFaucet ./build/contracts/MyFaucet.json

eth contract:send --network ganache --pk 4a2ef800121e51fe4780982e9e9796f785f907465b11c33dc1f81a2d127b586b myFaucet@0xC169fb1dD592ad02190Ff99dd595BFa57a2517A3 'withdraw("1000000000000000000")'

eth contract:call --network ganache myFaucet@0xC169fb1dD592ad02190Ff99dd595BFa57a2517A3 'lastWithdrawal()'

eth contract:call --network ganache blackCow@0x8FC444a3509201AbC76E3bAA53A58e3Bbd08d2c3 'balanceOf("0x5BeD56D18Aa6D968E023F1f47f393ec739b9aF59")'

eth contract:send --pk 9627b3dd789f8fce55c03f6781fdb5a202d584be7f7511e50f4183e42b56b728 --network ganache blackCow@0x8FC444a3509201AbC76E3bAA53A58e3Bbd08d2c3 'transfer("0xC4D9A6922C0A66EF5bC2e3f00de238A7413A2D18", "10000000000000000000")'

echo $((0x430e23400))
```
