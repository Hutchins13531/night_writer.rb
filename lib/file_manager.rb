require './lib/translate_braille'
require './lib/translate_english'

class FileManager
  attr_reader :read_file, :translator1

  def initialize
    @read_file = nil
    @translator1 = TranslateBraille.new(self)
    @translator2 = TranslateEnglish.new(self)
  end

  def read(file)
    @read_file = File.read(file).chomp
  end

  def write_braille(file)
    new_file = File.new(file, "w")
    new_file.puts(@translator1.limit_to_80_chars)
    new_file.close
  end

  def write_english(file)
    new_file = File.new(file, "w")
    new_file.puts(@translator2.translate_letter)
    new_file.close
  end

end
