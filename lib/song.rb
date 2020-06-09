class Song
  def initialize(title, artist)
    @title = title
    @artist = artist
    @play_count = 0
  end

  def full_name
    "#{@title} - #{@artist}"
  end

  def play_song!
    @play_count += 1
    # binding.pry
    puts "\n#{full_name} has been played #{@play_count} times!\n"
  end
end