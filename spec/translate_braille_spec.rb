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
    dictionary = Dictionary.new
  expect(translator1.file_manager).to eq(file_manager)
  expect(translator1.translated_message).to eq([])
  expect(translator1.dictionary).to be_an_instance_of(Dictionary)
  end

  it 'can convert the top line of braille translation' do
    file_manager = FileManager.new
    translator1 = TranslateBraille.new(file_manager)
    dictionary = Dictionary.new
    file_manager.read("test.txt")
  expect(translator1.top_line).to eq([".0"])
  end

  it 'can convert the middle line of braille translation' do
    file_manager = FileManager.new
    translator1 = TranslateBraille.new(file_manager)
    dictionary = Dictionary.new
    file_manager.read("test.txt")
  expect(translator1.middle_line).to eq(["00"])
  end

  it 'can convert the bottom line of braille translation' do
    file_manager = FileManager.new
    translator1 = TranslateBraille.new(file_manager)
    dictionary = Dictionary.new
    file_manager.read("test.txt")
  expect(translator1.middle_line).to eq(["00"])
  end









end
