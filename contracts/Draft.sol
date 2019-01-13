pragma ^0.5.0;

contract Draft{

address[32] public team_owners;

//mapping of SB rings
mapping(address => uint) public superbowl_rings;

//struct for best game stats

struct PlayerStat{
    uint touchdowns;
    uint reception_yards;
    uint rushing_yards;
    uint games;
    string name;

} 

//mapping of best 32 players game stat
mapping(address => PlayerStat[32]) best_season_stats;


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
