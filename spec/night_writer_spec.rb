require './lib/night_writer'
require './module/messageable'

RSpec.describe NightWriter do
  it 'exist' do
    night_writer = NightWriter.new
  expect(night_writer).to be_an_instance_of(NightWriter)
  end
end
