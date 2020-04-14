class Cli
     
    def run 
        puts "Hello! Welcome to Studio Ghibli."
        puts "Please type 'films' to see Studio Ghibli's films."
        puts "Type 'exit' to leave the app"
        #binding.pry
        #list_movies(Movie.all)
        input = gets.strip.downcase
        Api.get_films
        while input != "exit" do
            
            if input == "films"

                list_movies
            
            elsif input > 0  #input < Movie.all.length
             binding.pry
             summary = Movie.find_info_by_number(input.to_i)
             #print list_info(summary)

            
            else 
                puts "sorry please try again"
            
            end
            puts "what movie would you like see? Please pick a number to continue."
            input = gets.strip.downcase
        end
         puts "Bye!"
    end 




    def list_movies

    Movie.all.each.with_index(1) do |movie, index| puts "#{index}. #{movie.name}"

    end 
     
    end 

    def list_info(summary)

        
    end 
    
end



