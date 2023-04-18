require "music"

RSpec.describe Music do
  context "give one song" do
    it "return one song" do
      music = Music.new
      music.add_todo("song1")
      expect(music.list).to eq "song1"
    end
  end

  context "give two songs" do
    it "returns two songs" do
      music = Music.new
      music.add_todo("song1")
      music.add_todo("song2")
      expect(music.list).to eq "song1, song2"
    end
  end

  context "give no songs" do
    it "returns empty" do
      music = Music.new
      expect(music.list).to eq ""
    end
  end

  context "gives a song which has already been listened to" do
    it "fails" do
      music = Music.new
      music.add_todo("song1")
      expect { music.add_todo("song1") }.to raise_error "Already listend to this song!"
    end
  end
end
