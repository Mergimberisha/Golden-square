require "check_codeword"

RSpec.describe "check_codeword method" do
  it "it returns a wrong method if given the wrong codeword" do
    result = check_codeword("Red")
    expect(result).to eq "Wrong!"
  end
end
