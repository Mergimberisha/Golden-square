# As a user
# So that I can keep track of my tasks
# I want to check if a text includes the string #TODO.

class Music
  def initialize
    @list = []
  end

  def add_todo(song)
    fail "Already listend to this song!" while list.include? song
    @list << song
  end

  def list
    @list.join(", ")
  end
end
