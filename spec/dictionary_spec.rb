require './lib/dictionary'

RSpec.describe Dictionary do
  it 'exist' do
    dictionary = Dictionary.new
  expect(dictionary).to be_an_instance_of(Dictionary)
  end


end
