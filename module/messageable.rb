module Messageable

  def self.confirmation_message1(outgoing_message, char_length)
     puts "Created '#{outgoing_message}' containing #{char_length} characters."
  end

  def self.confirmation_message2(original_message, char_length)
     puts "Created '#{original_message}' containing #{char_length} characters."
  end
end
