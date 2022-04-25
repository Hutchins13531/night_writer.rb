require './lib/file_manager'

class NightWriter
  argv = ARGV

  if argv.length == 2
    file = FileManager.new
    file.read(argv[0])
    file.write(argv[1])
    outgoing_message_length = file.read_file.chars.count
    puts confirmation_message
  end
end
