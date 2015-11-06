require 'rspec'
require 'rack/test'
require_relative '../lib/ImdbSearcher.rb'
require_relative '../lib/MovieList.rb'

RSpec.describe MovieList do 

  describe "#select_random_film" do

    it "should return a film" do
      @search = ImdbSearcherFake.new.search_by_word(" ")
      @movie_list = MovieList.new(@search)
      expect(@movie_list.select_random_film).to be_kind_of(Hash)
    end
  end

end