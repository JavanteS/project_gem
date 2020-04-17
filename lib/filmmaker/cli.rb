class Cli
     
    def run 
        prompt
        input = gets.strip.downcase
        Api.get_films
        Movie.all.sort_by! { |movie| movie.name}
        while input != "exit" do
            
            if input == "films"
                prompt_two
                list_movies
        
            elsif input.to_i > 0  && input.to_i <= Movie.all.length
             
                  movie = Movie.find_info_by_number(input)
                  list_info(movie)
             
            
            else 
                puts ""
                puts "Sorry, invalid entry.  Please, try again"
            
            end
                puts ""
                puts "Pick a number to read the movie's description. To see the list of films again, type 'films'. Type 'exit' to leave."
                input = gets.strip.downcase
        end
         puts "Goodbye!"
    end 


    def prompt
        puts "Hello! Welcome to Studio Ghibli."
        puts "Please type 'films' to see Studio Ghibli's films."
        puts "Type 'exit' to leave the app"
    end 

    def prompt_two
        puts ""
        puts "Here is the list of Studio Ghibli's films"
        puts "-------------------"
    end 

    def list_movies
        
        #sorted.each.with_index(1) { |movie, index| puts "#{index}. #{movie.name}"}
        Movie.all.each.with_index(1) do |movie, index| 
                puts "#{index}. #{movie.name}"
         end 
     end 

    def list_info(movie)
        puts ""
        puts "Title: #{movie.name}"
        puts "Release date: #{movie.year}"
        puts "Rating: #{movie.rating}"
        puts ""
        puts "Description: #{movie.description}"
        
        puts "______________"
    end 
    
end



