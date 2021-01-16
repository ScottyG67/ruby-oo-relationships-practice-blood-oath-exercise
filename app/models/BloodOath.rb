class BloodOath
    attr_accessor :follower, :cult

    def initialize(follower,cult)
        @follower = follower
        @cult=cult
        @date = now # need to figure out how to get current time as YYY-MM-DD??
        @@all << self
    end
    @@all =[]
    def self.all
        @@all
    end

end
