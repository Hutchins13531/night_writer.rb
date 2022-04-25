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




end
