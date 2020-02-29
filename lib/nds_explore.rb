require 'pp'

$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
# Call the method directors_database to retrieve the NDS

def pretty_print_nds(nds)
  pp nds
  nil
end

def print_first_directors_movie_titles
  ss_directors = directors_database[0][:movies]
  row_index = 0 
  
  while row_index < directors_database.length do
   titles = ss_directors[0][row_index][:title]
   puts titles
    row_index += 1 
end
end 