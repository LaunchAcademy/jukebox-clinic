require "pry"

require_relative "lib/jukebox"
require_relative "lib/song"

# library = [
#   "Hello - Lionel Ritchie",
#   "Kokomo – The Beach Boys",
#   "Girl You Know It’s True – Milli Vanilli",
#   "Agadoo – Black Lace",
#   "Down Under - Men at Work",
#   "Nothing's Gonna Stop Us Now - Starship",
#   "Get Outta My Dreams, Get Into My Car - Billy Ocean",
#   "I Just Called To Say I Love You - Stevie Wonder",
#   "Hangin' Tough - New Kids on the Block",
#   "We Built This City - Starship",
#   "Wake Me Up Before You Go Go - Wham!",
#   "We Didn't Start The Fire - Billy Joel",
#   "I Wanna Dance With Somebody - Whitney Houston",
#   "U Can't Touch This - MC Hammer"
# ]

# song_requests = [
#   "Wake Me Up Before You Go Go - Wham!",
#   "I Wanna Dance With Somebody - Whitney Houston",
#   "U Can't Touch This - MC Hammer",
#   "She Don't Love Me Anymore - The Aliens"
# ]
song1 = Song.new("Wake Me Up Before You Go Go", "Wham!")
song2 = Song.new("She Don't Love Me Anymore", "The Aliens")
song3 = Song.new("Hello", "Lionel Ritchie")
song4 = Song.new("Kokomo", "The Beach Boys")
song5 = Song.new("Nothing's Gonna Stop Us Now", "Starship")

library = [song1, song2, song3, song4]

song_requests = [song1, song2, song5]
jukebox = Jukebox.new(library, song_requests)
# binding.pry
puts "\nOriginal playlist"
jukebox.playlist.each do |song|
  puts song.full_name
end

puts "\n"
puts jukebox.start_playlist!
# puts jukebox.start_playlist!
# puts jukebox.start_playlist!
# puts jukebox.start_playlist!
# puts jukebox.start_playlist!

puts "\nUpdated playlist"
# jukebox.playlist.each do |song|
#   puts song.full_name
# end
# binding.pry


