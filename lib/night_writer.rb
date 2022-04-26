require './lib/file_manager'
require './module/Messageable'

class NightWriter
  extend Messageable

  argv = ARGV
  if argv.length == 2
    file = FileManager.new
      file.read(argv[0])
      file.write(argv[1])
      outgoing_message_length = File.read(argv[1]).length
      confirmation_message(argv[1], outgoing_message_length)
  end
end
