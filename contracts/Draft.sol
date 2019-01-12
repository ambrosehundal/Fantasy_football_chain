pragma ^0.5.0;

contract Draft{

address[32] public team_owners;

//mapping of SB rings
mapping(address => uint) public superbowl_rings;


//Draft a player

function draft(uint playerId) public returns (uint){
    require(playerId >= 0 && playerId <= 31);
}

//Modifier to restrict trade only between team_owners

modifier onlyOwner(address _owner){
    require(msg.sender == _owner);
    _;
}
    

}
