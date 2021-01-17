class Follower
    attr_accessor :name, :age, :life_motto

    @@all =[]
    def self.all
        @@all
    end
    def initialize (name, age, life_motto)
        @name = name
        @age = age
        @life_motto = life_motto
        @@all << self
    end

    def join_cult(cult)
        if cult.old_enough?(self)
            BloodOath.new(self,cult)
        end
    end

    def self.of_a_certian_age(test_age)
        self.all.select {|follower| follower.age>=test_age}
    end

    def oaths_sworn
        BloodOath.all.select{|oath| oath.follower == self}
    end

    def my_cult_slogans
        oaths_sworn.map{|oath| oath.cult.slogan}
    end

    def self.most_active
        self.all.max{|follower|follower.oaths_sworn.length}
    end

    def self.top_ten
        number_oaths_sworn = {}
        number_oaths_sworn = self.all.map {|follower| [follower,follower.oaths_sworn.length]}
        sorted = number_oaths_sworn.sort_by {|key,value| value}
        sorted.map {|key,index| key}.last(10).reverse
    end

    def cults_joined
        oaths_sworn.map {|oath| oath.cult}
    end

    def fellow_cult_members
        fellow_cultist = []
        cults_joined.each do |cult|
            cult.cult_member_list.each do |oath|
                if oath.follower != self
                    fellow_cultist << oath.follower
                end
            end
        end
        fellow_cultist.uniq
    end


    def self.punch
        @@all.clear
    end

end
