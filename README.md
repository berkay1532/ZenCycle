# ZenCycleBlockchainScore

ZenCycleBlockchainScore is a decentralized trust scoring system built to evaluate the trustworthiness of wallet addresses based on various on-chain activities. The project's goal is to help users of the Circles network (https://docs.aboutcircles.com/) answer the question, "Why should I trust this user?" or "Should I trust this user?" by providing a trust score for wallet addresses.

By leveraging blockchain data, trust scores are generated based on several factors such as wallet age, transaction count, past smart contract interactions, suspicious activities, and whether the wallet has an ENS (Ethereum Name Service) domain. The system helps to facilitate safer and more meaningful interactions within the Circles ecosystem.

## Table of Contents

- [Project Overview](#project-overview)
- [Key Features](#key-features)
- [Technologies Used](#technologies-used)
- [How It Works](#how-it-works)
- [Trust Score Calculation](#trust-score-calculation)
- [Oasis Rofl Technology](#oasis-rofl-technology)
- [Smart Contracts](#smart-contracts)
- [Deployment](#deployment)
- [Contributing](#contributing)

## Project Overview

The ZenCycleBlockchainScore project enables the creation of a trust score for a given wallet address based on a range of on-chain data points. This system utilizes the power of Oasis' Rofl technology and the Circles network to help users build trust with one another and avoid potentially harmful interactions.

### Why it Matters

On decentralized networks, trust is often established through reputation, which is hard to quantify. By using on-chain data and smart contracts, we can calculate a "trust score" that reflects the reliability and trustworthiness of a wallet address. This score allows Circles network users to make more informed decisions when interacting with others.

## Key Features

- **Trust Score Calculation**: Evaluates wallet trustworthiness based on several factors such as:
  - Wallet age
  - Transaction count
  - Previous smart contract interactions
  - ENS ownership
  - Suspicious transactions
- **Rofl Technology**: Utilizes Oasis' Rofl technology to create a privacy-preserving and secure trust scoring mechanism.
- **Smart Contracts**: Trust scores are stored securely in smart contracts deployed on the Oasis Sapphire network.
- **Seamless Integration**: Easily integrates with Circles' platform to help users assess each other's trust levels.

## Technologies Used

- **Oasis Sapphire**: The platform that hosts and stores trust score data.
- **Rofl**: A technology provided by Oasis to generate verifiable proofs that ensure privacy and security.
- **Ethereum Smart Contracts**: Smart contracts deployed to store and manage trust scores.
- **Circles**: A decentralized social platform that enables users to evaluate and trust each other based on blockchain data.

## How It Works

1. **User Interaction**: A user connects their wallet address to the ZenCycle platform.
2. **Data Collection**: The system gathers various data points from the blockchain, such as transaction history, wallet age, and ENS ownership.
3. **Trust Score Calculation**: The collected data is used to calculate the user's trust score based on predefined parameters.
4. **Rofl Technology**: The trust score calculation is verified using Oasis' Rofl technology, ensuring privacy and security.
5. **Smart Contract Storage**: The trust score is then stored in an Ethereum-based smart contract deployed on the Oasis Sapphire network.
6. **Circles Integration**: The trust score can be used within the Circles network to help users make more informed decisions about who to trust.

## Trust Score Calculation

The trust score is determined by evaluating the following parameters:

- **Wallet Age**: Older wallets are typically seen as more trustworthy.
- **Transaction Count**: Wallets with a higher number of legitimate transactions are deemed more trustworthy.
- **Smart Contract Interactions**: Wallets that have interacted with trusted smart contracts are given higher scores.
- **Suspicious Transactions**: If a wallet is found to have a history of suspicious transactions, its score is lowered.
- **ENS Ownership**: Wallets that own an ENS domain can have a higher trust score, as it indicates more engagement with the Ethereum ecosystem.

## Oasis Rofl Technology

This project integrates Oasis' **Rofl** technology (https://docs.oasis.io/build/rofl/), which provides a privacy-preserving mechanism for generating and verifying trust scores. Rofl ensures that no sensitive wallet data is exposed, allowing users to prove the validity of their trust score without revealing their full transaction history.

## Smart Contracts

Trust scores are stored and managed in smart contracts deployed on the **Oasis Sapphire** network. You can access the smart contract repository at:  
[ZenCycle Smart Contracts](https://github.com/berkay1532/ZenCycle)

## Deployment

To deploy and run the project locally, follow these steps:

1. Clone the repository:
   ```bash
   git clone https://github.com/berkay1532/ZenCycleBlockchainScore.git
