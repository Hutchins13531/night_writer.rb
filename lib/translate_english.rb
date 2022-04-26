require './lib/dictionary'

class TranslateEnglish
  attr_reader :file_manager, :translated_message, :dictionary

  def initialize(file_manager)
    @dictionary = Dictionary.new
    @file_manager = file_manager
    @translated_message = Array.new
  end

  def format_to_elements
    elements_array = []
    separate = @file_manager.read_file.downcase.split("\n")
    until separate[0].length == 0
      elements_array.push(separate[0].slice!(0..1), separate[1].slice!(0..1), separate[2].slice!(0..1))
    end
    elements_array
  end

  def make_keys
    keys = format_to_elements
    elements_array = []
    until keys.length == 0
      elements_array << keys.slice!(0..2)
    end
    elements_array
  end

end
