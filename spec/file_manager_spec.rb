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
  expect(file_manager.read("test_message.txt")).to eq("hello")
  end

  it 'can write to a braille file' do
    file_manager = FileManager.new
    filemanager = FileManager.new
    filemanager.read("message.txt").chomp
    expect(file_manager.write("braille.txt")).to eq("hello")
  end

end
