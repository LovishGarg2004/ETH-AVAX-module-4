// SPDX-License-Identifier: MIT

pragma solidity 0.8.24;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "hardhat/console.sol";

contract DegenGameToken is Ownable, ERC20Burnable {
  mapping(uint256 => uint256) public optionToCost; // Option ID to Cost (in GamerCoin)
  mapping(address => uint256[]) public playerToRewards; // Player address to array of earned Reward IDs

  constructor() ERC20("GamerCoin", "GMC") Ownable(msg.sender) {
    optionToCost[1] = 50;
    optionToCost[2] = 200;
    optionToCost[3] = 5000;
  }

  function displayRewards() public pure returns (string memory) {
    string memory rewardList = "1: Basic Power Up - 50 GMC \n2: Advanced Gear Set - 200 GMC\n3: Legendary Weapon - 5000 GMC";
    console.log(rewardList);
    return rewardList;
  }

  function mintCoin(address _to, uint256 _amount) external onlyOwner {
    _mint(_to, _amount);
  }

  function transferCoin(address _to, uint256 _amount) public {
    require(balanceOf(msg.sender) >= _amount, "Insufficient GamerCoin balance");
    approve(msg.sender, _amount);
    transferFrom(msg.sender, _to, _amount);
  }

  function claimRewards(uint256 _optionID) public {
    require(optionToCost[_optionID] != 0, "Invalid Reward Option");
    require(balanceOf(msg.sender) >= optionToCost[_optionID], "Insufficient GamerCoin balance");
    burn(optionToCost[_optionID]);
    playerToRewards[msg.sender].push(_optionID);
  }

  function checkBalance() public view returns (uint256) {
    return balanceOf(msg.sender);
  }

  function burnCoin(uint256 _amount) public {
    burn(_amount);
  }

  function viewClaimedRewards(address _player) public view returns(uint256[] memory){
    return playerToRewards[_player];
  }
}
