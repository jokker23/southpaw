module Southpaw::Gameday
  class UrlBuilder
    class << self
      BASE_URL = "http://gd2.mlb.com/components/game/mlb/"
      
      def build_url_to_get_games_for_day(game_date)
        month = "%02d" % game_date.month
        day = "%02d" % game_date.day
        "#{BASE_URL}year_#{game_date.year}/month_#{month}/day_#{day}/master_scoreboard.xml"
      end
    end
  end
end