require './lib/file_manager'
require './module/Messageable'

class NightWriter
  extend Messageable

  argv = ARGV
  if argv.length == 2
    file = FileManager.new
      file.read(argv[0])
      file.write_braille(argv[1])
      outgoing_message_length = File.read(argv[1]).chomp.length
      Messageable.confirmation_message1(argv[1], outgoing_message_length)
  end
end
# ruby ./lib/night_writer.rb message.txt braille.txt
