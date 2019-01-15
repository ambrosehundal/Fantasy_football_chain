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
    bool winSB_next_year;
    uint overall_skill_level;
} 

//player skills levels
   
    uint constant amateur = 1;
    uint constant pro = 2;
    uint constant elite = 3;
    uint constant hof = 4;



//mapping of best 32 players game stat
mapping(address => PlayerStat[32]) best_season_stats;

//function to insert player
function insertStat(address playerAddress, uint tds, uint rush, uint recs, uint games, uint skillLevel, string n) public returns (bool success){
    best_season_stats[playerAddress].touchdowns = tds;
    best_season_stats[playerAddress].rushing_yards = rush;
    best_season_stats[playerAddress].reception_yards = recs;
    best_season_stats[playerAddress].games = games;
    best_season_stats[playerAddress].name = n;
    best_season_stats[playerAddress].overall_skill_level = skillLevel;

    return true;
}

function showStats(address player) public view returns(struct){
    return 
}


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
