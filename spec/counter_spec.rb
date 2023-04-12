require "counter"

RSpec.describe Counter do
  it "counts the numbers which the user enters" do
    counter = Counter.new
    counter.add(23)
    result = counter.report
    expect(result).to eq "Counted to 23 so far."
  end
end
