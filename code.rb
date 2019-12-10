require "pry"
require_relative "./lib/jukebox"

library = [
  "Hello - Lionel Ritchie",
  "Kokomo – The Beach Boys",
  "Girl You Know It’s True – Milli Vanilli",
  "Agadoo – Black Lace",
  "Down Under - Men at Work",
  "Nothing's Gonna Stop Us Now - Starship",
  "Get Outta My Dreams, Get Into My Car - Billy Ocean",
  "I Just Called To Say I Love You - Stevie Wonder",
  "Hangin' Tough - New Kids on the Block",
  "We Built This City - Starship",
  "Wake Me Up Before You Go Go - Wham!",
  "We Didn't Start The Fire - Billy Joel",
  "I Wanna Dance With Somebody - Whitney Houston",
  "U Can't Touch This - MC Hammer"
]

requested_songs = [
  "Wake Me Up Before You Go Go - Wham!",
  "She Don't Love Me Anymore - The Aliens",
  "I Wanna Dance With Somebody - Whitney Houston"
]

jukebox = Jukebox.new(library, requested_songs)

puts "Original Playlist"
puts jukebox.requested_songs

jukebox.add_track!("U Can't Touch This - MC Hammer")

puts "\n New Playlist"
puts jukebox.requested_songs

puts "\n\n\n"

jukebox.play!
jukebox.play!
jukebox.play!
jukebox.play!
jukebox.play!
