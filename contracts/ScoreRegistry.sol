// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ScoreRegistry {
    mapping(address => uint8) private scores;

    event ScoreSubmitted(address indexed wallet, uint8 score);

    function submitScore(
        address wallet,
        bytes memory signature,
        uint8 score
    ) public {
        string memory message = "ZenCycle";
        bytes32 messageHash = keccak256(abi.encodePacked(message));
        address signer = recoverSigner(messageHash, signature);

        require(signer == wallet, "Invalid signature for the wallet address");

        scores[wallet] = score;
        emit ScoreSubmitted(wallet, score);
    }

    function recoverSigner(
        bytes32 messageHash,
        bytes memory signature
    ) public pure returns (address) {
        (uint8 v, bytes32 r, bytes32 s) = splitSignature(signature);
        return ecrecover(messageHash, v, r, s);
    }

    function splitSignature(
        bytes memory signature
    ) public pure returns (uint8 v, bytes32 r, bytes32 s) {
        require(signature.length == 65, "Invalid signature length");

        assembly {
            r := mload(add(signature, 32))
            s := mload(add(signature, 64))
            v := byte(0, mload(add(signature, 96)))
        }
    }

    function getScore(address wallet) public view returns (uint8) {
        return scores[wallet];
    }
}
