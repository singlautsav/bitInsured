// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

contract bitInsured{

  uint TotalPoolSize=0; //initialized to 0, will be updated when poolers join in

  struct Insurer { //details for insurer
    string name;
    uint policyCover;
    // uint premium; -> should use a formula to calculate premium
    }

  struct Pooler{ // details for the pooler 
    string name;
    uint contribution;
  }

  // Insurer[] public insurers;
  // Pooler[] public poolers;

  mapping (address => Pooler) poolerData;
  mapping (address => Pooler) insurerData;

  
  function addPooler(string memory _name, uint _contribution) public{
    require(_contribution>10);
    TotalPoolSize= TotalPoolSize+ _contribution;
    poolerData[msg.sender]= Pooler(_name, _contribution);    
  } 

  function withdrawPoolMoney() public{ // later

  }

  function addInsurerDetails() public{

  }

  function payPremium() public {

  }
  
  function rewardPremiumDistribution() public {

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
