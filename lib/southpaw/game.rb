module Southpaw
  class Game
    attr_accessor :id, :game_time, :home_team, :away_team
    
    class << self
      def load_games_by_date(game_date)
        Gameday::Games.load_games_by_date(game_date)
      end
      
      def load_from_dom(dom)
        game = Game.new
        game.id = dom['gameday'].to_s
        game.home_team = Team.new(dom['home_team_id'], dom['home_team_city'], dom['home_team_name'])
        game.away_team = Team.new(dom['away_team_id'], dom['away_team_city'], dom['away_team_name'])
        game
      end
    end
  end
  
end