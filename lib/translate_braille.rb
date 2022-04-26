require './lib/dictionary'

class TranslateBraille
  attr_reader :file_manager, :translated_message

  def initialize(file_manager)
    @file_manager = file_manager
    @translated_message = Array.new
  end



end
