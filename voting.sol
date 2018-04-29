pragma solidity ^0.4.11;


contract Voting {

mapping (bytes32 => uint8) public votesReceived;

bytes32[] public candidatesList;

constructor(bytes32[] candidatesNames) public {
	candidatesList = candidatesNames;
}

function totalVotesSoFar(bytes32 candidate) public view returns (uint8) {
	return votesReceived[candidate];
}

function voteForCandidate (bytes32 candidate) public {

	if (validCandidate(candidate) == false) revert();

	votesReceived[candidate] += 1;
}

function validCandidate (bytes32 candidate) public view returns(bool res) {
	for(uint i =0; i< candidatesList.length; i++) {
		if(candidatesList[i] == candidate) {
			return true;
		}
	}
	return false;
}

}