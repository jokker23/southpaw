module Southpaw
  class Team
    attr_accessor :id, :name, :location
    def initialize(id, location, name)
      @id = id
      @location = location.strip
      @name = name.strip
    end
    
    def full_name
      "#{@location} #{@name}"
    end
  end
end