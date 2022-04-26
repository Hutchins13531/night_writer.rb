require './lib/dictionary'

class TranslateEnglish
  attr_reader :file_manager, :translated_message, :dictionary

  def initialize(file_manager)
    @dictionary = Dictionary.new
    @file_manager = file_manager
    @translated_message = Array.new
  end

end
