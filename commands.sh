# Launching NFT Collection using Candy Machine v3

solana --version
solana-keygen --version

# download sugar -> https://github.com/metaplex-foundation/sugar/releases | v2.0.0
# add the sugar file into project, rename to sugarCM3
chmod 775 sugarCM3 
./sugarCM3 --version # authorize access 

# pwd if you want
# pubkey: 56fpr6d18rSUHPZyMZ4pausx4GyueWpe6pkikDysyikx
# credit badge relief regret sand baby hundred ice list power come group
solana-keygen new --outfile /Users/andyli/Desktop/cs/tech/solana-nft/Owner.json
# pubkey: 2nswJCpZzDZgcca3aTXvyu8Bn5WYr2pVeZKraBKkkgMP
# father loop have secret play cart sponsor work until stock ankle artefact
solana-keygen new --outfile /Users/andyli/Desktop/cs/tech/solana-nft/Creator.json

solana config set --keypair /Users/andyli/Desktop/cs/tech/solana-nft/Owner.json
solana config set --url https://metaplex.devnet.rpcpool.com/ # solana config set --url (alchemy's instead)
solana config get # just to make sure we changed our keypair path is pwd path/Owner.json, and RPC is devnet

solana airdrop 2 56fpr6d18rSUHPZyMZ4pausx4GyueWpe6pkikDysyikx
# use solfaucet.com to airdrop devenet tokens

./sugarCM3 create-config

# How many NFTs will you have in your candy machine? · 1 // do not count collection
# ✔ What is the symbol of your collection? Hit [ENTER] for no symbol. · LF
# ✔ What is the seller fee basis points? · 500
# ✔ Do you want to use a sequential mint index generation? We recommend you choose no. · no
# ✔ How many creator wallets do you have? (max limit of 4) · 1
# ✔ Enter creator wallet address #1 · 2nswJCpZzDZgcca3aTXvyu8Bn5WYr2pVeZKraBKkkgMP
# ✔ Enter royalty percentage share for creator #1 (e.g., 70). Total shares must add to 100. · 100
# ✔ Which extra features do you want to use? (use [SPACEBAR] to select options you want and hit [ENTER] when done) · 
# ✔ What upload method do you want to use? · Bundlr
# ✔ Do you want your NFTs to remain mutable? We HIGHLY recommend you choose yes. · yes

./sugarCM3 upload

# Creating collection NFT for candy machine
# Collection mint ID: ...

# Creating candy machine
# Candy machine ID: ...
./sugarCM3 deploy

./sugarCM3 verify

./sugarCM3 guard add

./sugarCM3 guard show

git clone git@github.com:metaplex-foundation/candy-machine-ui.git

cd candy-machine-ui

npm i

cp .env.example .env

