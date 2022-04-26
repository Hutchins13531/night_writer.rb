require './lib/translate_braille'
require './lib/dictionary'
require './lib/file_manager'

RSpec.describe TranslateBraille do
  it 'exist' do
    file_manager = FileManager.new
    translator1 = TranslateBraille.new(file_manager)
  expect(translator1).to be_an_instance_of(TranslateBraille)
  end

  it 'has readable attributes' do
    file_manager = FileManager.new
    translator1 = TranslateBraille.new(file_manager)
  expect(translator1.file_manager).to eq(file_manager)
  end



end
