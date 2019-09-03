class Song
  attr_reader :title, :artist
  def initialize(title, artist)
    @title = title
    @artist = artist
    @play_count = 0
  end

  def full_name
    "#{@title} - #{@artist}"
  end

  def play!
    puts "I wanna rock"
    @play_count += 1
    puts "#{full_name} has been played"
  end
end
