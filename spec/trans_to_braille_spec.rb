require './lib/trans_to_braille'

RSpec.describe TransToBraille do
  it 'exist' do
    trans_to_braille = TransToBraille.new
  expect(trans_to_braille).to be_an_instance_of(TransToBraille)
  end

end
