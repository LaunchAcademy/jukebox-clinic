class Jukebox
  attr_reader :library, :requested_songs

  def initialize(library, requested_songs)
    @library = library
    @requested_songs = []

    requested_songs.each do |song|
      add_track!(song)
    end
  end

  def add_track!(new_track)
    if @library.include?(new_track)
      @requested_songs.push(new_track)
    end
    @library.include?(new_track)
  end

  def play!
    @requested_songs.each do |song|
      song.play!
    end
  end
end
