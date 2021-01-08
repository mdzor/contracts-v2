// SPDX-License-Identifier: MIT

pragma solidity 0.6.12;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

interface IOperator {
    function poolInfo(uint256) external view returns (IERC20,uint256,uint256,uint256,bool,uint256,bool,uint256,uint256);
    function userInfo(uint256, address) external view returns (uint256,uint256,uint256);
    function poolLength() external view returns (uint256);
    function deposit(uint256 _pid, uint256 _amount) external;
    function withdraw(uint256 _pid, uint256 _amount) external;
    function rewardEarned(uint256 _pid, address _user) external view returns (uint256);
    function getReward(uint256 _pid) external;
    function rewardRate(uint256 _pid) external view returns (uint256);
}
