class BloodOath
    attr_accessor :follower, :cult, :initiation_date

    def initialize(follower,cult)
        @follower = follower
        @cult=cult
        time =Time.now
        @initiation_date = Time.now.strftime("%Y-%m-%d")
        @@all << self
    end
    @@all =[]
    def self.all
        @@all
    end

    def self.first_oath
        self.all.first
    end

    def self.hide
        @@all.clear
    end
end
