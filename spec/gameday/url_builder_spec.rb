require 'helper'

describe Southpaw::Gameday::UrlBuilder do
  it "should return valid url when requesting daily games" do
    game_date = Time.local(2012,5,1)
    url = Southpaw::Gameday::UrlBuilder.build_url_to_get_games_for_day game_date
    url.should eq("http://gd2.mlb.com/components/game/mlb/year_2012/month_05/day_01/master_scoreboard.xml")
  end
  
end