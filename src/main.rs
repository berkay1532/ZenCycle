use ethdam::{calculate_score, get_portfolio_data};
use serde_json;

#[tokio::main]
async fn main() {
    let wallet_address = "0xabc123...".to_string(); // test cüzdan adresi

    // Cüzdan verilerini çek
    let data = get_portfolio_data(&wallet_address).await;

    // Skoru hesapla
    let result = calculate_score(&wallet_address, data);

    // Sonucu yazdır
    let output = serde_json::to_string_pretty(&result).unwrap();
    println!("{}", output);
}
