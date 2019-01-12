pragma ^0.5.0;

contract Draft{

address[32] public team_owners;

//Draft a player

function draft(uint playerId) public returns (uint){
    require(playerId >= 0 && playerId <= 31);
}
    

}
