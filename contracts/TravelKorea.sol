// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

import "@openzeppelin/contracts/utils/Strings.sol";
import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

// 0xcD565b40CBa8C8af0Bfb0E485F361105BC278c21
contract TravelSeoul is ERC721, Ownable {
    address public immutable admin;

    uint256 public tokenSupply = 0;
    uint256 public constant MAX_SUPPLY = 10;
    // uint256 public constant PRICE = 0 ether;

    constructor() ERC721("TravelKorea", "TKR") {
        admin = msg.sender;
    }

    function mint() external payable {
        require(tokenSupply < MAX_SUPPLY, "Supply used up");

        _mint(msg.sender, tokenSupply);
        tokenSupply++;
    }

    function _baseURI() internal pure override returns (string memory) {
        return "ipfs://QmSP2kr3QzypGv3yPK9CUL4CDdnKA2T474d3TyhibyS7Gy/";
    }

    function renounceOwnership() public override {
        require(false, "cannot renounce");
    }

    function transferOwnership(address newOwner) public override {
        require(false, "cannot renounce");
    }
}