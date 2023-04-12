require "gratitudes"

RSpec.describe Gratitudes do
  it "joins the users input" do
    gratitudes = Gratitudes.new
    gratitudes.add("hello, hi")
    expect(gratitudes.format).to eq "Be grateful for: hello, hi"
  end
end
