require './lib/night_writer'

RSpec.describe NightWriter do
  it 'exist' do
    night_writer = NightWriter.new
  expect(night_writer).to be_an_instance_of(NightWriter)
  end

  it 'has a confirmation_message' do
    night_writer = NightWriter.new
    expected = "Created 'braille.txt' containing 5 characters"
  expect(night_writer.confirmation_message).to eq(expected)
  end
end
