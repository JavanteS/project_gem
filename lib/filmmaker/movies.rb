class Movie
    attr_accessor :name , :description, :year, :rating, :director

    @@all = []

    def initialize(name:, description:, year:, rating:, director:)
        @name = name 
        @description = description
        @rating = rating 
        @year = year 
        @director = director
        @@all << self
    end 

    def self.all 
        @@all 
    end 

    

    def self.find_info_by_number(input)
        
        input = input.to_i
        self.all[input - 1]
    end 
end 