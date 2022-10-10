// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/math/SafeMath.sol";

contract Prode is Ownable {
  mapping (address => bool) public participants;

  uint buyIn;
  uint score;

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

  function enterProde(address _participant) external payable {
    // Ver como seria el tema de usar USDT
    // Supongo que viene por el lado de un IERC20
  }

  function participantScore(address _participant) external view returns(uint){
    
    return score;
  }
}