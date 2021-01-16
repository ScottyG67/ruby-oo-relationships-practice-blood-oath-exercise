class Cult
    attr_accessor :name, :location, :founding_year, :slogan

    @@all =[]
    def self.all
        @@all
    end

    def initialize (name, location,founding_year,slogan)
        @name = name
        @location = location
        @founding_year = founding_year
        @slogan = slogan
        @@all << self
    end

    def recruit_follower(follower)
        BloodOath.new(follower,self)
    end

    def cult_population
        BloodOath.all.select{|oath| oath.cult == self}.lenght
    end
end