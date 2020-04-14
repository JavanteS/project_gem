class Movie
    attr_accessor :name , :description, :director, :year, :genre

    @@all = []

    def initialize(name:)
        @name = name 
        @@all << self 
    end 

    def self.all 
        @@all 
    end 

    def self.find_by_name(name)
        self.all.select do |movie| movie.name == name
        end 
    end

    def self.find_info_by_number(input)
        input = input.to_i
        self.all[input - 1]
    end 
end 