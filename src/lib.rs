use serde::{Deserialize, Serialize};

#[derive(Debug, Deserialize)]
pub struct PortfolioData {
    pub stake: u64,
    pub tx_volume: u64,
    pub age: u64,
}

#[derive(Debug, Serialize)]
pub struct ScoreResult {
    pub address: String,
    pub score: u8,
}

pub async fn get_portfolio_data(wallet: &str) -> PortfolioData {
    let stake = get_wallet_stake(wallet).await;
    let tx_volume = get_tx_volume(wallet).await;
    let age = get_wallet_age(wallet).await;

    PortfolioData {
        stake,
        tx_volume,
        age,
    }
}

pub async fn get_wallet_stake(_wallet: &str) -> u64 {
    8000
}

pub async fn get_tx_volume(_wallet: &str) -> u64 {
    10000
}

pub async fn get_wallet_age(_wallet: &str) -> u64 {
    365
}

pub fn calculate_score(address: &str, data: PortfolioData) -> ScoreResult {
    let mut score = (data.stake / 1000 + data.tx_volume / 500 + data.age / 20) as u8;
    if score > 100 {
        score = 100;
    }
    ScoreResult {
        address: address.to_string(),
        score,
    }
}
