require './lib/translate_english'
require './lib/dictionary'
require './lib/file_manager'

RSpec.describe TranslateEnglish do
  it 'exists' do
    translator2 = TranslateEnglish.new
    expect(translator2).to be_an_instance_of(TranslateEnglish)
  end
end
