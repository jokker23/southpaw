require 'helper'

describe Southpaw::Team do
  it "should return full team name when converting to string" do
    team = Southpaw::Team.new("1", "Baltimore", "Orioles")
    team.name.should == "Orioles"
    team.location.should == "Baltimore"
    team.id = "1"
    team.full_name.should == "Baltimore Orioles"
    
  end
  
end