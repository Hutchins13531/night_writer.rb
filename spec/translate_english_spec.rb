require './lib/translate_english'
require './lib/dictionary'
require './lib/file_manager'

RSpec.describe TranslateEnglish do
  it 'exists' do
    file_manager = FileManager.new
    translator2 = TranslateEnglish.new(file_manager)
    expect(translator2).to be_an_instance_of(TranslateEnglish)
  end

  it 'has readable attributes' do
    file_manager = FileManager.new
    translator2 = TranslateEnglish.new(file_manager)
    dictionary = Dictionary.new
  expect(translator2.file_manager).to eq(file_manager)
  expect(translator2.translated_message).to eq([])
  expect(translator2.dictionary).to be_an_instance_of(Dictionary)
  end

  

end
