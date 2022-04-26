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

  it 'can convert joined elements into individual elements of an array' do
    file_manager = FileManager.new
    translator2 = TranslateEnglish.new(file_manager)
    dictionary = Dictionary.new
    file_manager.read("test_braille_char.txt")
    expected = [".0", "00", "0.", ".0", "0.", "0."]
  expect(translator2.format_to_elements).to eq(expected)
  end

  it 'can convert array elements into hash keys' do
    file_manager = FileManager.new
    translator2 = TranslateEnglish.new(file_manager)
    dictionary = Dictionary.new
    file_manager.read("test_braille_char.txt")
    expected = [[".0", "00", "0."], [".0", "0.", "0."]]
  expect(translator2.make_keys).to eq(expected)
  end

  it 'has letter values associated with braille keys' do
    file_manager = FileManager.new
    translator2 = TranslateEnglish.new(file_manager)
    dictionary = Dictionary.new
    file_manager.read("test_braille_char.txt")
  expect(translator2.translate_letter).to eq('ts')
  end
end
