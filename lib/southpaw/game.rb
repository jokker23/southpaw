module Southpaw
  class Game
    attr_accessor :id, :game_time, :home_team, :away_team, :venue
    
    class << self
      def load_games_by_date(game_date)
        Gameday::Games.load_games_by_date(game_date)
      end
      
      def load_from_xml(dom)
        game = Game.new
        game.id = dom['gameday'].to_s
        set_teams(game,dom)
        set_venue(game,dom)
        game
      end
      
      private 
      def set_teams(game,dom)
        game.home_team = Team.new(dom['home_team_id'], dom['home_team_city'], dom['home_team_name'])
        game.away_team = Team.new(dom['away_team_id'], dom['away_team_city'], dom['away_team_name'])
      end
      
      def set_venue(game, dom)
        game.venue = Venue.new(dom['venue_id'],dom['venue'])
      end
      
    end
  end
  
end