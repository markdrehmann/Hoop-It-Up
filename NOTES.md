Models

Player (name, email, pw) -- player should be able to create game -- /player/:id/game/new
- has many games (through roster)
- has many players_rosters
- has many rosters through players_rosters
<!-- - plays at (has) many courts, through games or rosters? -->

Players_Roster
- belongs to player
- belongs to roster
- date ****
- available_spots? or would this be on roster?

Roster (player_ids?, game_id)
- has many players_rosters
- has many players, through players_rosters
- belongs to a game

Game (day, time, roster_id?, player_ids?, court_id)
- belongs to a court
- has_one Roster

Court (name, address)
- has many games
- has many rosters, through games