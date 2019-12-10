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
    puts "~ Now Playing..."
    @play_count += 1
    puts "#{@title} and has been played #{@play_count} times"
  end
end
