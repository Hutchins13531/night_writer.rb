class FileManager
  attr_reader :read_file

  def initialize
    @read_file = nil
  end

  def read(file)
    @read_file = File.read(file).chomp
  end

end
