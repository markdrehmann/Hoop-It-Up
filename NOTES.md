Models

Player (name, email, pw) -- player should be able to create game -- /player/:id/game/new
Scope method, player with most_rosters?
- *** has many games (through roster)?
- has many player_rosters
- has many rosters through players_rosters

Player_Roster (player_id, roster_id)
- belongs to player
- belongs to roster

Roster (name)
- has many player_rosters
- has many players, through player_rosters
--
- has many games
- has many courts, through games

Game (day, time, roster_id, court_id)
- belongs to a court
- belongs to a Roster

Court (name, address)
- has many games
- has many rosters, through games