pragma solidity ^0.4.11;

contract Election {
	// Store Candidate
	// Read Candidate
	// Constructor
	string public candidate;

	function Election() public {
		candidate = "Candidate 1";
	}
}