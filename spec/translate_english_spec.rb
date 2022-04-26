require './lib/translate_english'
require './lib/dictionary'
require './lib/file_manager'

RSpec.describe TranslateEnglish do
  it 'exists' do
    file_manager = FileManager.new
    translator2 = TranslateEnglish.new(file_manager)
    expect(translator2).to be_an_instance_of(TranslateEnglish)
  end
end
