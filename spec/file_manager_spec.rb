require './lib/file_manager'

RSpec.describe FileManager do
  it 'exists' do
    file_manager = FileManager.new
  expect(file_manager).to be_an_instance_of(FileManager)
  end

end
