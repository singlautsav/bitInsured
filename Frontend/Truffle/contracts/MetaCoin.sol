// SPDX-License-Identifier: MIT
pragma solidity >=0.4.25 <0.7.0;

import "./ConvertLib.sol";

// This is just a simple example of a coin-like contract.
// It is not standards compatible and cannot be expected to talk to other
// coin/token contracts. If you want to create a standards-compliant
// token, see: https://github.com/ConsenSys/Tokens. Cheers!

contract MetaCoin {
    uint TotalPoolSize=0; //initialized to 0, will be updated when poolers join in

    mapping (address => uint256) public balanceOf;
    mapping (address => uint256) public poolerContribution;
    mapping (address => uint256) public premuimLeft;
    uint256 numPoolers;

  
  function addPoolMoney(uint _contribution) public {
    require(_contribution>10);
    if (poolerContribution[msg.sender] == 0) {
      poolerContribution[msg.sender] = _contribution;
      TotalPoolSize += _contribution;
      numPoolers++;
    }
    else {
      poolerContribution[msg.sender] += _contribution;
      TotalPoolSize += _contribution;
    }
  } 

  function withdrawPoolMoney(uint256 _amountWithdrawal) public { 
    require(poolerContribution[msg.sender] >= _amountWithdrawal);
    poolerContribution[msg.sender] = poolerContribution[msg.sender] - _amountWithdrawal;
    TotalPoolSize = TotalPoolSize - _amountWithdrawal;
  }

  function addInsurerDetails() public{

  }

  function payPremium(uint256 _premiumPayment) public {
    premuimLeft[msg.sender] = premuimLeft[msg.sender] - _premiumPayment;
    rewardPremiumDistribution(_premiumPayment);
  }
  
  function rewardPremiumDistribution(uint256 _amount) internal {
    uint256 individualPremium = _amount / numPoolers;
    for (uint i = 0; i < numPoolers; i++) {
        // address pooler;
        // pooler = poolerContribution[i];
        // balanceOf[pooler] += _amount;
    }

  }
  function claimInsurance() public {

  }
  function penalize() public{

  }
  function premiumCalculator() public {

  }
  function validateClaim() public {

  }
}
