// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

interface IToken is IERC20 {
    // 0xfbf9fdee
    error UnauthorizedBond(address account); 

    // a3d582ec
    error AlreadyListed(); 

    // fffbc6e3
    error TotalSupplyMaximumExceeded();

    // 0x59635fadda4a164417bf50a7e6dd1e8dc791303f625953aa4002aff86ddd8d57
    event BondUpdated(address indexed oldBond, address indexed newBond);

    // 0x3abfb03b17f817e0e3c9e4b128e06d96b4109b53cc5e5ad3e9bc0db1ad70f777
    event TransferEvent(
        address indexed from, 
        address indexed to, 
        uint256 value, 
        uint256 fromBalance, 
        uint256 toBalance, 
        uint256 totalBalance, 
        uint256 blockTimestamp
    );

    // view functions
    // 0x313ce567
    function decimals() external view returns (uint8);

    // 0xd910b05a
    function isListed() external view returns (bool);

    // tx functions
    // 0x1b5ad8b5
    function mintByBond(address to, uint256 amount) external;

    // 0xf4efe8f2
    function burnByBond(address account, uint256 amount) external;

    // 0x0f560cd7
    function list() external returns (bool);
}
