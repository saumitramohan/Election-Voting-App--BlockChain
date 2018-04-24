// Version of solidity
pragma solidity ^0.4.11;

contract Election {
	// Model a Candidate
	// Store Candidate
	// Fetch Candidate
	// Store Candidate Count

	// Make a structure of Candidate

	// Model a Candidate

	struct Candidate{
		uint id;
		string name;
		uint voteCount;

	}

	function Election() public {
		addCandidate ("Candidate 1");
		addCandidate ("Candidate 2");
	}

	// Store a Candidate

	mapping (uint => Candidate) public candidates;

	// Keep track as solidity doesnt provide any such method
	uint public candidatesCount;

	// Add a candidate

	// Local variable - _name , hence _
	// private as we dont want to be accesible
	function addCandidate(string _name) private{
		// Id of the candidates
		candidatesCount ++;
		candidates[candidatesCount] = Candidate(candidatesCount,_name,0);
	}
}