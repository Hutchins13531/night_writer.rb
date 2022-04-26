require './lib/dictionary'

class TranslateBraille
  attr_reader :file_manager, :translated_message, :dictionary

  def initialize(file_manager)
    @dictionary = Dictionary.new
    @file_manager = file_manager
    @translated_message = Array.new
  end

  def top_line
    braille1 = []
    @file_manager.read_file.each_char do |character|
    braille1 << dictionary.letters[character][0]
    end
    braille1
  end

  def middle_line
    braille2 = []
    @file_manager.read_file.each_char do |character|
    braille2 << dictionary.letters[character][1]
    end
    braille2
  end

  def bottom_line
    braille3 = []
    @file_manager.read_file.each_char do |character|
    braille3 << dictionary.letters[character][2]
    end
    braille3
  end


end
