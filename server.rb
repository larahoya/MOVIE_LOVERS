require 'sinatra'
require 'pry'
require_relative './lib/ImdbSearcher.rb'
require_relative './lib/MovieList.rb'

get '/' do
  erb(:index)
end

post '/search' do
  word = params[:input_word]
  search = ImdbSearcher.new.search_by_word(word)
  new_list = MovieList.new(search)
  @year = new_list.select_random_film[:year]
  @movies = new_list.movies
  erb(:search)
end

post '/check_movies' do
end