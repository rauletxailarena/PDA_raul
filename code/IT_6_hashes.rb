
# I want to create an array of hashes that will hold my whole collection of movies
# and that will provide me with some functions to add, remove, return or
# perform some sorting over my movies

# First I will create an array of hashes with the movies that I have

my_movies = [
  {
    title: "Inside Out",
    year: 2015,
    genre: [:animation, :comedy]
  },
  {
    title: "Django Unchained",
    year: 2012,
    genre: [:drama, :action]
  },
  {
    title: "La La Land",
    year: 2016,
    genre: [:musical]
  },
  {
    title: "Gravity",
    year: 2013,
    genre: [:drama, :sci_fi]
  },
  {
    title: "Mad Max: Fury Road",
    year: 2015,
    genre: [:drama, :action]
  }
]

# # I want to create a function that will loop through the movies within my array
# of hases and that will return only the hashes that include a movie of the
# specified genre

def return_movies_by_genre(movies, genre)
  result = movies.select(){|movie| movie[:genre].include?(genre)}
  return result
end


puts "The current movies within my movie collection are:"
puts my_movies
puts  
puts "I want now the program to return only my drama movies"
puts
puts "DRAMA MOVIES"
puts "----------------"
puts return_movies_by_genre(my_movies, :drama)
