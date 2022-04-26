require './lib/dictionary'

RSpec.describe Dictionary do
  it 'exist' do
    dictionary = Dictionary.new
  expect(dictionary).to be_an_instance_of(Dictionary)
  end

  it 'has readable attributes' do
    dictionary = Dictionary.new
  expect(dictionary.letters).to be_a(Hash)
  end

  it 'has braille equivalent of letters' do
    dictionary = Dictionary.new
  expect(dictionary.letters["m"]).to eq(["00", "..", "0."])
  end
end
