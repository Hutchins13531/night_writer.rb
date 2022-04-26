require './module/messageable'
require './spec/spec_helper'

RSpec.describe Messageable do
  it 'should return nil' do
  expect(Messageable.confirmation_message1('braille.txt','32')).to be(nil)
  expect(Messageable.confirmation_message2('message.txt','5')).to be(nil)
  end
end
