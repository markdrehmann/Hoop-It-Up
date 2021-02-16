# Specifications for the Rails Assessment

Specs:
- [x] Using Ruby on Rails for the project
- [x] Include at least one has_many relationship -- Player has_many :player_rosters
- [x] Include at least one belongs_to relationship -- Player_roster belongs_to :player
- [x] Include at least two has_many through relationships -- player has_many rosters and vice versa through player_rosters
- [x] Include at least one many-to-many relationship -- players to rosters through player_rosters
- [x] The "through" part of the has_many through includes at least one user submittable attribute, that is to say, some attribute other than its foreign keys that can be submitted by the app's user -- Game (belongs_to court and roster) has attribute 'time'
- [x] Include reasonable validations for simple model objects -- court, game, player
- [x] Include a class level ActiveRecord scope method (model object & class method name and URL to see the working feature e.g. User.most_recipes URL: /users/most_recipes) -- Game.upcoming, Game.past /games
- [x] Include signup (how e.g. Devise)
- [x] Include login (how e.g. Devise)
- [x] Include logout (how e.g. Devise)
- [x] Include third party signup/login (how e.g. Devise/OmniAuth) -- omniauth github
- [x] Include nested resource show or index -- courts/1/games
- [x] Include nested resource "new" form -- courts/1/games/new
- [x] Include form display of validation errors -- players/new, courts/new, and games/new

Confirm:
- [x] The application is pretty DRY
- [x] Limited logic in controllers
- [x] Views use helper methods if appropriate
- [x] Views use partials if appropriate