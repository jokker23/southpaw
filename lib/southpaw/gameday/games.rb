module Southpaw
  module Gameday
    class Games < Base
      class << self
        def load_games_by_date(game_date)
          games = []
          url = UrlBuilder.build_url_to_get_games_for_day(game_date)
          response = HTTParty::get(url).body
          document = Nokogiri::XML(response)
          document.xpath('//games/game').each do |game|
            games.push Game.load_from_dom(game)
          end
          games
        end
      end
  
    end
  end
end