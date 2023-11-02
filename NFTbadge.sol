// SPDX-License-Identifier: MIT

pragma solidity ^0.8.10;
import "@openzeppelin/contracts-upgradeable/token/ERC1155/ERC1155Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts/utils/Strings.sol";
import "./Helpers/NftHelper.sol";

contract NFTbadge is
    Initializable,
    ERC1155Upgradeable,
    OwnableUpgradeable,
    NftHelper
{
    string public name;
    string public symbol;
    bool public paused;

    mapping(uint256 => string) public tokenURI;

    function initialize() external initializer {
        __ERC1155_init("");
        __Ownable_init(msg.sender);
        paused = false;
        name = "toconQuest";
        symbol = "TQT";
    }

    modifier requirements(uint256 id) {
        require(!paused, "The contract is paused!");
        require(id != 0, "token doesn't exist");
        require(
            balanceOf(msg.sender, id) == 0,
            "You already own a token with this ID"
        );
        _;
    }

    function setBatchURI(
        uint256 start,
        uint256 end,
        string memory _uri
    ) external onlyOwner {
        uint256 count = end - start;
        for (uint256 i = 0; i < count; i++) {
            string memory fullURI = string(
                abi.encodePacked(
                    "ipfs://",
                    _uri,
                    "/",
                    Strings.toString(start),
                    ".json"
                )
            );
            tokenURI[start] = fullURI;
            start++;
        }
    }

    function setURI(uint256 _id, string memory _uri) external onlyOwner {
        string memory fullURI = string(
            abi.encodePacked(
                "ipfs://",
                _uri,
                "/",
                Strings.toString(_id),
                ".json"
            )
        );
        tokenURI[_id] = fullURI;
    }

    function setPaused(bool _state) external onlyOwner {
        paused = _state;
    }

    function mint(uint256 id, address _entity) external requirements(id) {
        require(mintRequirements(id, _entity), "mint failed");
        _mint(msg.sender, id, 1, "");
    }

    function finalMint() external {
        for (uint256 i = 1; i <= 17; i++) {
            require(
                balanceOf(msg.sender, i) > 0,
                "You need to own all the Token IDs to mint the final certificate"
            );
        }
        _mint(msg.sender, 18, 1, "");
    }

    function safeTransferFrom(
        address from,
        address to,
        uint256 id,
        uint256 value,
        bytes memory data
    ) public override {
        if (from != address(0) && to != address(0)) {
            revert(
                "NonTransferableERC1155: Transfers between non-zero addresses are not allowed"
            );
        }
        super._safeTransferFrom(from, to, id, value, data);
    }

    function safeBatchTransferFrom(
        address from,
        address to,
        uint256[] memory ids,
        uint256[] memory values,
        bytes memory data
    ) public override {
        if (from != address(0) && to != address(0)) {
            revert(
                "NonTransferableERC1155: Transfers between non-zero addresses are not allowed"
            );
        }
        super._safeBatchTransferFrom(from, to, ids, values, data);
    }
}
