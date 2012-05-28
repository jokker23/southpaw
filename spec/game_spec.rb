require 'helper'

describe Southpaw::Game do
  
  it "should build valid instance from dom" do
    xml = Nokogiri::XML(fixture('game.xml'))
    dom = xml.xpath('//game')[0]
    game = Southpaw::Game.load_from_dom(dom)
    game.id.should eq("2012_04_10_nyamlb_balmlb_1")
    game.home_team.should_not be_nil
    game.away_team.should_not be_nil

  end
  
  
  
end