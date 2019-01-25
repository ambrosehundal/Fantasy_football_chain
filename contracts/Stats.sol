pragma ^0.5.0;

contract Stats{

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
function insertStat(address playerAddress, uint tds, uint rush, uint recs, uint games, uint skillLevel, string n) public returns (bool memory){
    best_season_stats[playerAddress].touchdowns = tds;
    best_season_stats[playerAddress].rushing_yards = rush;
    best_season_stats[playerAddress].reception_yards = recs;
    best_season_stats[playerAddress].games = games;
    best_season_stats[playerAddress].name = n;
    best_season_stats[playerAddress].overall_skill_level = skillLevel;

    return true;
}

//function showStats(address player) public view returns(struct){
   // return 
//}

//event example

//event SuperBowl{
    
//}

}

