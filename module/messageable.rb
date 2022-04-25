module Messagble

  def confirmation_message(read_file)
    puts "You've requested to read '#{read_file}'"
    puts "and output the translated file to '#{output_file}'"
    puts "Is that correct? Type 'y' for yes, 'n' for no. No quotes."
  end

end
