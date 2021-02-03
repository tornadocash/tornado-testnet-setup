//SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

interface IGov {
    function setQuorumVotes(uint256 quorumVotes) external;
}

contract ProposalLowerVoteQuorum {
    function executeProposal() public {
        IGov gov = IGov(0x5efda50f22d34F262c29268506C5Fa42cB56A1Ce);
        
        // Change the vote quorum from 25k TORN to 15k TORN
        gov.setQuorumVotes(15000e18);
    }
}
