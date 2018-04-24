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

	// Store accounts that have voted

	mapping(address => bool ) public voters;
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
		candidates[candidatesCount] = Candidate(candidatesCount, _name, 0);
	}

	// All the code in the block chain is immutable
	// Deploying the contract case gas
	// Bug full code will cause unnecessary ether

	// Vote Count
	function vote (uint _id) public {
		// access the account which is voting 
		require(!voters[msg.sender]);

		require(_id > 0 && _id <= candidatesCount);
		voters[msg.sender] = true;
		candidates[_id].voteCount++;
	}
}