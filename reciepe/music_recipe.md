1. As a user
So that I can keep track of my tasks
I want to check if a text includes the string #TODO.

2. Design the Class Interface
Include the initializer and public methods with all parameters and return values.

# EXAMPLE

class Music
def initialize
Add a emtpy array
end

def add_todo(song)
Do a fail test and add song to empty array
end

def list
return a list of song
end

3. Create Examples as Tests
Make a list of examples of how the class will behave in different situations.
end

# EXAMPLE

# 1
music = Music.new
music.add_todo("song1")
music.list # => "song1"

# 2
music = Music.new
music.add_todo("song1")
music.add_todo("song2")
music.list # => "song1", song2"

# 3
music = Music.new
todo_tracker.list # => ""

# 4
music = Music.new
music.add("song1")
music.list # => "Already listend to this song!"


4. Implement the Behaviour
After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.