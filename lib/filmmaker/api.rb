class Api 

    def self.get_films
        url = 'https://ghibliapi.herokuapp.com/films'
        response = Net::HTTP.get(URI(url))
        movies = JSON.parse(response)
        #binding.pry
        movies.each { |m| Movie.new(name: m["title"], description: m["description"], year: m["release_date"])}
    end 

    
end