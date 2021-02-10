Models

Player (name, email, pw) -- player should be able to create game -- /player/:id/game/new
- has many games (through roster)?
- has many players_rosters
- has many rosters through players_rosters

Players_Roster (player_id, roster_id)
- belongs to player
- belongs to roster

Roster (game_id)
- has many players_rosters
- has many players, through players_rosters
--
- belongs to a game
- has many courts through games

Game (day, time, roster_id, court_id)
- belongs to a court
- belongs to a Roster

Court (name, address)
- has many games
- has many rosters, through games