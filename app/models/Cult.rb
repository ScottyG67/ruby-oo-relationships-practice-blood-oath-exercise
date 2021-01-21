class Cult
    attr_accessor :name, :location, :founding_year, :slogan, :minimum_age

    @@all =[]
    def self.all
        @@all
    end

    def initialize (name, location,founding_year,slogan, min_age=18)
        @name = name
        @location = location
        @founding_year = founding_year
        @slogan = slogan
        @minimum_age = min_age
        @@all << self
    end

    def old_enough?(follower)
        if self.minimum_age<=follower.age
            TRUE
        else
            puts "Sadly the minimum age for #{self.name} is #{self.minimum_age}. Please come back in #{self.minimum_age - follower.age} years."
            FALSE
        end
    end

    def cult_member_list
        BloodOath.all.select{|oath| oath.cult == self}
    end

    def recruit_follower(follower)
        if old_enough?(follower)
            BloodOath.new(follower,self)
        #else
        #    puts "Sadly the minimum age for #{self.name} is #{self.minimum_age}. Please come back in #{self.minimum_age - follower.age} years."
        end
    end

    def cult_population
        cult_member_list.length
    end

    def self.find_by_name(cult_name)
        self.all.select {|cult| cult.name == cult_name}
    end

    def self.find_by_location(cult_location)
        self.all.select {|cult| cult.location == cult_location}
    end

    def self.find_by_founding_year(cult_founding_year)
        self.all.select {|cult| cult.founding_year == cult_founding_year}
    end

    def average_age
        age_list = cult_member_list.map {|oath| oath.follower.age}
        age_list.sum/age_list.length
    end

    def my_followers_mottos
        cult_member_list.map {|oath|oath.follower.life_motto}
    end

    def self.least_popular
        #self.all.reduce {|acc,cult| cult.cult_population < acc.cult_population ? cult : acc}
        self.all.min {|cult|cult.cult_population}
    end

    def self.fbi_raid
        @@all.clear
    end

end