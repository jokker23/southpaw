require 'helper'

describe Southpaw::Game do
  context "when building from XML" do
    before do
      xml = Nokogiri::XML(fixture('game.xml'))
      dom = xml.xpath('//game')[0]
      @game = Southpaw::Game.load_from_xml(dom)
    end
    
    it "should build valid instance from XML" do
      @game.should_not be_nil
    end
  
    it "should create instances for teams" do
      @game.away_team.should_not be_nil
      @game.home_team.should_not be_nil
    end
    
    it "should create venue" do
      @game.venue.should_not be_nil
    end
  end

end