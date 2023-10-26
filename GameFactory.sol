// SPDX-License-Identifier: MIT

pragma solidity ^0.8.20;
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "./Helpers/FactoryHelper.sol";

contract GameFactory is Initializable, OwnableUpgradeable, FactoryHelper {

    bool public paused;
    uint public games;

    event DeployInstance(address indexed Instance, address indexed sender, uint indexed game );

    function initialize() external initializer{
        __Ownable_init(msg.sender);
        paused = false;
    }

    function deploy(uint game) external returns (address addr) { 
        require(!paused, "The contract is paused!");
        require(game > 0 && game <= games, "There Is No More Games");
        bytes memory bytecode = ChooseGame(game);
        assembly {

            addr := create(callvalue(), add(bytecode, 0x20), mload(bytecode))
        }
        require(addr != address(0), "deploy failed");
        emit DeployInstance(addr , msg.sender, game);
    }

    function setGames(uint num) external onlyOwner{
        games = num;
    }

    function setPaused(bool _state) external onlyOwner {
        paused = _state;
    }
    
}
