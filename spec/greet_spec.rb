require "greet"

RSpec.describe "greet method" do
  it "greet a given user" do
    result = greet("Mergim")
    expect(result).to eq "Hello, Mergim!"
  end
end
