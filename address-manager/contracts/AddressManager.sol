// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract AddressManager {
    enum Status { Unmarked, Good, PossibleFraud }
    
    address[] private addresses;
    mapping(address => Status) private addressStatus;

    // Event declarations
    event AddressAdded(address indexed _address);
    event AddressMarked(address indexed _address, Status status);

    // Function to store a new Ethereum address
    function storeAddress(address _address) public {
        addresses.push(_address);
        addressStatus[_address] = Status.Unmarked;
        emit AddressAdded(_address);
    }

    // Function to mark an address as possible fraud
    function markAsPossibleFraud(address _address) public {
        addressStatus[_address] = Status.PossibleFraud;
        emit AddressMarked(_address, Status.PossibleFraud);
    }

    // Function to mark an address as good
    function markAsGood(address _address) public {
        addressStatus[_address] = Status.Good;
        emit AddressMarked(_address, Status.Good);
    }

    // Function to check if an address is marked and return its status
    function getMarkedStatus(address _address) public view returns (string memory) {
        if (addressStatus[_address] == Status.Unmarked) {
            return "Unmarked";
        } else if (addressStatus[_address] == Status.PossibleFraud) {
            return "Possible Fraud";
        } else {
            return "Good";
        }
    }

    // Function to get all unmarked addresses
    function getUnmarkedAddresses() public view returns (address[] memory) {
        uint count = 0;
        // Count unmarked addresses
        for (uint i = 0; i < addresses.length; i++) {
            if (addressStatus[addresses[i]] == Status.Unmarked) {
                count++;
            }
        }

        address[] memory unmarkedAddresses = new address[](count);
        uint index = 0;
        // Store unmarked addresses
        for (uint i = 0; i < addresses.length; i++) {
            if (addressStatus[addresses[i]] == Status.Unmarked) {
                unmarkedAddresses[index] = addresses[i];
                index++;
            }
        }
        return unmarkedAddresses;
    }
}
