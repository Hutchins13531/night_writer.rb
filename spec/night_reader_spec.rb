require './lib/file_manager'
require './lib/night_reader'

RSpec.describe do
  it "exists" do
    night_reader = NightReader.new
  expect(night_reader).to be_an_instance_of(NightReader)
  end


end
