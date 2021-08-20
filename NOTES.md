Removed line:
<%= link_to "Court with Most Games", court_games_path(@court) %>
from views/courts/index - line 3

When creating a game - add feature to create new court at same time?

Models
Player (name, email, password)

Scope method, player with most_rosters?
- has many games (through roster)?
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

Court (name, address) -nested routes /courts/:id/games/new
- has many games
- has many rosters, through games
