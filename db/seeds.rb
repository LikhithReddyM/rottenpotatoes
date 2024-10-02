# Seed the RottenPotatoes DB with some movies.
more_movies = [
  { title: 'My Neighbor Totoro', rating: 'G',
    release_date: '16-Apr-1988' },
  { title: 'Green Book', rating: 'PG-13',
    release_date: '16-Nov-2018' },
  { title: 'Parasite', rating: 'R',
    release_date: '30-May-2019' },
  { title: 'Nomadland', rating: 'R',
    release_date: '19-Feb-2021' },
  { title: 'CODA', rating: 'PG-13',
    release_date: '13-Aug-2021' },
  { title: 'Spirited Away', rating: 'G',
    release_date: '31-Aug-2002' },
  { title: 'Howls Moving Castle', rating: 'PG-13',
    release_date: '20-Nov-2004' },
  { title: 'Ponyo', rating: 'G',
    release_date: '14-Aug-2009' }
]

more_movies.each do |movie|
  Movie.find_or_create_by(title: movie[:title]) do |m|
    m.rating = movie[:rating]
    m.release_date = movie[:release_date]
    m.description = movie[:description]
  end
end
