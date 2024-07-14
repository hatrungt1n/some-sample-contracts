pragma solidity ^0.8.0;

// Called contract
contract ProfileContract {
    uint public age;
    address public userAddress;

    function updateProfile(uint _age) public {
        age = _age;
        userAddress = msg.sender;
    }
}

// Calling contract
contract ManagerContract {
    uint public age;
    ProfileContract profileContract;

    constructor(address _profileContractAddress) {
        profileContract = ProfileContract(_profileContractAddress); // Initialize with the address of the deployed ProfileContract
    }

    function callUpdateProfile(uint _age) public {
        profileContract.updateProfile(_age);
    }

    function delegateCallUpdateProfile(address _profileContract, uint _age) public {
        (bool success, ) = _profileContract.delegatecall(
            abi.encodeWithSignature("updateProfile(uint256)", _age)
        );
        require(success, "Delegate call failed");
    }
}