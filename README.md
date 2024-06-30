# DegenGameToken
## Description
Degen Gaming introduces DegenGameToken (DGT), a revolutionary token designed to transform your gaming experience. By showcasing your skills, you'll earn DGTs, the in-game currency. These tokens unlock a treasure trove of exciting rewards within the Degen Gaming store, fueling your competitive spirit and rewarding your dedication. DGTs go beyond mere in-game purchases. Built on the lightning-fast Avalanche blockchain, DGTs enable seamless and cost-effective player-to-player trading. This opens doors for a dynamic in-game economy, fostering growth, engagement, and a sense of community among players. Degen Gaming, with its innovative DGT system, aims to redefine player loyalty and retention by offering a truly rewarding and enriching gameplay experience.

## Video Demonstration
[Video Tutorial](https://www.loom.com/share/80185bfb21f84d5694adff7c62065129?sid=69a27bbf-7c50-4780-a864-b2eb682abab2)

## Steps to install and run this project
1. Clone this repository:
```
git clone https://github.com/LovishGarg2004/ETH-AVAX-intermediate-module-4.git
cd ETH-AVAX-intermediate-module-4
```
2. Install dependencies:
```
npm install
```
3. Install MetaMask and create an account.
4. Connect to the Fuji testnet on [testnet.snowtrace.io](https://testnet.snowtrace.io/).
5. Obtain test AVAX for the Fuji testnet by following [these instructions](https://docs.avax.network/build/dapp/smart-contracts/get-funds-faucet).
6. Compile and deploy the smart contract:

```
npx hardhat compile && npx hardhat ignition deploy ./ignition/modules/DegenGameToken.js --network fuji
```
7. Copy the deployed contract address and paste it into testnet.snowtrace.io to verify the contract.
8. Open [Remix IDE](https://remix.ethereum.org/) and navigate to the Deploy and Run Transactions section.
9. Select `Injected Provider: MetaMask` (or your chosen wallet) in the dropdown and set the owner account.
10. Use the "At Address" feature in Remix to interact with your deployed contract. Paste the contract address in the input box and click "At Address" to bring up the UI for interacting with your contract.

## Contributor
MetaCrafter Lovish Garg [@LovishGarg](https://www.linkedin.com/in/lovish-garg-480b37249?utm_source=share&utm_campaign=share_via&utm_content=profile&utm_medium=android_app)

## License
This project is licensed under the MIT License

