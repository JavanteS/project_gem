class Movie
    attr_accessor :name , :description, :director, :year

    @@all = []

    def initialize(name:, description:)
        @name = name 
        @description = description
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