// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/math/SafeMath.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";

contract Prode is Ownable {
  mapping (address => bool) public participants;

  uint buyIn; // Should be 20 USDT
  uint score;
  IERC20 public _stablecoinToken; // To add USDT contract address

  struct Match {
    // string home;
    uint8 homeScore;
    // string away;
    uint8 awayScore;
  }

  // Fixture of the 64 matches with the actual results
  struct Fixture {
    uint8 number;
    uint date;
    Match matchResult;
  }

  // Predictions made by participants on the 64 matches
  struct Predictions {
    address participant;
    uint8 number;
    uint date;
    Match matchPrediction;
  }

  // Only someone who is a participant (payed the entrance fee) can access certain functions
  modifier isParticipant {
    require(participants[msg.sender]);
    _;
  }

  function _modifyResult(uint8 _matchNumber, uint8 _homeScore, uint8 _awayScore) private onlyOwner {
    // Algo aca para modificar el resultado del partido en especifico
  }

  function enterProde() external {
    require(_stablecoinToken.transferFrom(msg.sender, address(this), buyIn));
    participants[msg.sender];
  }

  function participantScore() external view returns(uint){
    return score;
  }
}