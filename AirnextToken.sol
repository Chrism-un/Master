// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <=0.8.7;

import "./contracts/token/ERC20/ERC20.sol";

contract AirnextToken is ERC20 {
    address adminAddress;
    uint256 constant maxSupply  = 230000000 * 10 ** 5;

    constructor(address _adminAddress) ERC20("Airnext", "AIRN"){
        adminAddress = _adminAddress;
        _mint(_adminAddress, maxSupply);
    }

    function decimals() public pure override returns(uint8){
        return 5;
    }
}
