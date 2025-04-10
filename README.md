### nix4bitcoin
To compile and run bitcoin with Nix, you copy the `shell.nix` file of this repository and paste in your bitcoin local repo in the master branch. You run this command to open nix shell with its dependencies:
```bash
nix-shell
```
 Now run these commands to compile [bitcoin](https://github.com/bitcoin/bitcoin/blob/master/doc/build-unix.md#setup-and-build-example-arch-linux):
```bash
cmake -B build
cmake --build build
ctest --test-dir build
./build/bin/bitcoind
```
Let bitcoin running in the current terminal, and open a new terminal in the bitcoin directory and run again the `nix-shell` command. To [create a wallet](https://github.com/bitcoin/bitcoin/blob/master/doc/managing-wallets.md#11-creating-the-wallet),for example, run:
```bash
cd build/bin/
.bitcoin-cli createwallet "wallet_name"
./bitcoin-cli getnewaddress
./bitcoin-cli generatetoaddress 101 your_address
./bitcoin-cli getbalance
echo -n "your_address" | sha256sum
```
