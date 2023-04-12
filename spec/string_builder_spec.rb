require "string_builder"

RSpec.describe StringBuilder do
  it "initially returns an empty string as output" do
    string_builder = StringBuilder.new
    expect(string_builder.output).to eq ""
  end

  it "has a size of that string's length" do
    string_builder = StringBuilder.new
    string_builder.add("Mergz")
    expect(string_builder.size).to eq 5
  end
end
