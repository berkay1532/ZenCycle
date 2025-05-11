# 1. Aşama: Derleme aşaması
FROM rust:1.82-slim-bookworm AS builder

# Gerekli bağımlılıkları kur
RUN apt-get update && apt-get install -y \
    build-essential \
    cmake \
    pkg-config \
    cryptsetup \
    curl \
    git \
    libssl-dev \
    llvm-dev \
    libclang-dev \
    clang \
    && rm -rf /var/lib/apt/lists/*

# Proje dizinine geç
WORKDIR /app

# Proje dosyalarını kopyala
COPY . .

# Derleme (release modu)
RUN cargo build --release

# 2. Aşama: Çalıştırma aşaması (aynı taban: bookworm)
FROM debian:bookworm-slim

# Sadece çalışmak için gerekli kütüphaneleri kur
RUN apt-get update && apt-get install -y \
    libssl-dev \
    ca-certificates \
    libc6 \
    libgcc-s1 \
    && rm -rf /var/lib/apt/lists/*

# Binary'yi kopyala
COPY --from=builder /app/target/release/ethdam /usr/local/bin/ethdam

# Giriş noktası
ENTRYPOINT ["/usr/local/bin/ethdam"]


