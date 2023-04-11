require "report_length"

RSpec.describe "report_length method" do
  it "Gives the length of word which the user inputs" do
    result = report_length("Mergz")
    expect(result).to eq "This string was 5 characters long."
  end
end
