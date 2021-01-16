class follower
    attr_accessor :name, :age, :life_motto

    @@all =[]
    def self.all
        @@all
    end
    def initialize (name, all, life_motto)
        @name = name
        @age = age
        @life_motto = life_motto
        @@all << self
    end

    def joint_cult(cult)
        BloodOath.new(self,cult)
    end

    def self.of_a_certian_age(test_age)
        self.all.select {|follower| follower.age>=test_age}
    end


end
