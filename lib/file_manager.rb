class FileManager
  attr_reader :read_file

  def initialize
    @read_file = nil
  end

  def read(file)
    @read_file = File.read(file).chomp
  end

  def write(file)
    new_file = File.new(file, "w")
    new_file.puts(@read_file)
    new_file.close
  end

end
