require 'sinatra'
require 'pry'
require_relative './lib/ImdbSearcher.rb'
require_relative './lib/MovieList.rb'

get '/' do
  erb(:index)
end

post '/search' do
  word = params[:input_word]
  search = ImdbSearcher.search_by_word(word)
  new_list = MovieList.new(search)
  @question = new_list.select_random_question
  @movies = new_list.movies
  selected_movie = new_list.select_random_film
  @year = selected_movie[:year]
  @cast_member = selected_movie[:cast_members][0]
  
  erb(:search)
end

post '/check_movies' do
end