require 'pry'

class MovieList

  attr_reader :movies
  def initialize(movie_search)
    @movies = movie_search
  end

  def select_random_film
    n = rand(9)
    @movies[n]
  end

end