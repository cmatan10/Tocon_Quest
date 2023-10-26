// SPDX-License-Identifier: MIT
import "./FactoryHelper.sol";

pragma solidity ^0.8.10;

abstract contract NftHelper is FactoryHelper{
    function mintRequirements(uint256 id, address _entity)
        internal
        view
        returns (bool)
    {
        require((id >= 1 && id <= 17), "Id out of range");
        if (id == 1) {
            require(
                checkBytes2Game(_entity),
                "You must pass level 1"
            );
        } else if (id == 2) {
            require(
                checkFallbackGame(_entity),
                "You must pass level 2"
            );
        } else if (id == 3) {
            require(
                checkBalanceCheckerGame(_entity),
                "You must pass level 3"
            );
        } else if (id == 4) {
            require(
                checkPayableContractGame(payable(_entity)),
                "You must pass level 4"
            );
        } else if (id == 5) {
            require(
                checkTimestampGame(_entity),
                "You must pass level 5"
            );
        } else if (id == 6) {
            require(
                checkGasCheckerGame(payable(_entity)),
                "You must pass level 6"
            );
        } else if (id == 7) {
            require(
                checkChangePasswordGame(_entity),
                "You must pass level 7"
            );
        } else if (id == 8) {
            require(
                checkOverflowGame(payable(_entity)),
                "You must pass level 8"
            );
        } else if (id == 9) {
            require(
                checkBlockHashGame(_entity),
                "You must pass level 9"
            );
        } else if (id == 10) {
            require(
                checkInterfaceIdGame(_entity),
                "You must pass level 10"
            );
        } else if (id == 11) {
            require(
                checkEncodeDataGame(_entity),
                "You must pass level 11"
            );
        } else if (id == 12) {
            require(
                checkHashCollisionGame(payable(_entity)),
                "You must pass level 12"
            );
        } else if (id == 13) {
            require(
                checkDecodeDataGame(_entity),
                "You must pass level 13"
            );
        } else if (id == 14) {
            require(
                checkFactoryGame(_entity),
                "You must pass level 14"
            );
        } else if (id == 15) {
            require(
                checkSupportInterfaceGame(_entity),
                "You must pass level 15"
            );
        } else if (id == 16) {
            require(
                checkLimitedTicketsGame(_entity),
                "You must pass level 16"
            );
        } else if (id == 17) {
            require(
                checkEducatedGuessGame(_entity),
                "You must pass level 17"
            );
        }
        return true;
    }
}
