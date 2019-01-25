pragma solidity ^0.5.0;

contract Draft{

address[32] public team_owners;


//mapping of SB rings
mapping(address => uint) public superbowl_rings;




//Draft a player

function draft(uint playerId) public returns (uint){
    require(playerId >= 0 && playerId <= 31);

    team_owners[playerId] = msg.sender;

    return playerId;
}

//Modifier to restrict trade only between team_owners

modifier onlyOwner(address _owner){
    require(msg.sender == _owner);
    _;
}

//retreiving the team team owners 
function getOwners() public view returns (address[32] memory){
    return team_owners;
}
    

}
