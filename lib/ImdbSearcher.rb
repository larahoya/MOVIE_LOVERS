require 'pry'
require 'imdb'

class ImdbSearcher

  def self.search_by_word(word)
    films = []
    film_search = Imdb::Search.new(word)
    n = 0
    while films.size < 9
      if film_search.movies[n].poster != nil
        films << {
                  id: n,
                  title: film_search.movies[n].title,
                  year: film_search.movies[n].year,
                  poster: film_search.movies[n].poster,
                  cast_members: film_search.movies[n].cast_members
                }
      end
      n += 1
    end
    films
  end

end

class ImdbSearcherFake

  def self.search_by_word(word)
    [
     {id: 1, title: "Titulo", year: 1991, poster: "./movie.jpg", cast_members: "member1"},
     {id: 2, title: "Titulo", year: 1992, poster: "./movie.jpg", cast_members: "member2"},
     {id: 3, title: "Titulo", year: 1993, poster: "./movie.jpg", cast_members: "member3"},
     {id: 4, title: "Titulo", year: 1994, poster: "./movie.jpg", cast_members: "member4"},
     {id: 5, title: "Titulo", year: 1995, poster: "./movie.jpg", cast_members: "member5"},
     {id: 6, title: "Titulo", year: 1996, poster: "./movie.jpg", cast_members: "member6"},
     {id: 7, title: "Titulo", year: 1997, poster: "./movie.jpg", cast_members: "member7"},
     {id: 8, title: "Titulo", year: 1998, poster: "./movie.jpg", cast_members: "member8"},
     {id: 9, title: "Titulo", year: 1999, poster: "./movie.jpg", cast_members: "member9"},
    ]
  end

end
