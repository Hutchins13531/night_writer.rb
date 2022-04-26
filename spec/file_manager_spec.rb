require './lib/file_manager'

RSpec.describe FileManager do
  it 'exists' do
    file_manager = FileManager.new
  expect(file_manager).to be_an_instance_of(FileManager)
  end

  it 'has readable attributes' do
    file_manager = FileManager.new
  expect(file_manager.read_file).to eq(nil)
  end

  it 'can read a file' do
    file_manager = FileManager.new
    file_manager.read("message.txt")
  expect(file_manager.read_file).to eq("hello")
  end

  it 'can write to a file in braille' do
    file_manager = FileManager.new
    file_manager.read("message.txt")
    file_manager.write_braille("braille.txt")
    expect(file_manager.read("braille.txt")).to eq(
              "0.0.0.0.0.\n00.00.0..0\n....0.0.0."
              )
  end

  it 'can write to a file in english' do
    file_manager = FileManager.new
    file_manager.read("braille.txt")
    file_manager.write_english("original_message.txt")
    expect(file_manager.read("original_message.txt")).to eq("hello")
  end
end
