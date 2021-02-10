Models

Player (name, email, pw)
- has many games
- is on a roster, can be on many rosters?
- plays at many courts, through games and rosters?

Game (day, time, roster_id?, court_id)
- has many players or has one roster?
- belongs to a court

Court (name, address)
- has many games
- has many players, through rosters and games?

Roster (player_ids?, game_id)
- has many players
- belongs to a game