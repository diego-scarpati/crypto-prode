// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0;

import "@openzeppelin/contracts/access/Ownable.sol";

contract Prode {
  mapping (address => bool) public participants;

  struct Match {
    uint8 number;
    string home;
    string away;
    uint date;
  }

  struct Fixture {
    Match matchResult;
  }

  struct Predictions {
    address participant;
    Match matchPrediction;
  }
}