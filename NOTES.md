Models

Player (name, email, pw) -- player should be able to create game -- /player/:id/game/new
- has many games (through roster?)
- is on a roster, can be on many rosters?
- plays at (has) many courts, through games or rosters?

Roster (player_ids?, game_id)
- has many players
- belongs to a game

Game (day, time, roster_id?, player_ids?, court_id)
- has many players or has one roster?
- belongs to a court

Court (name, address)
- has many games
- has many players, through rosters and/or games?