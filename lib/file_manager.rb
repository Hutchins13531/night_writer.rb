class FileManager
  attr_reader :read_file

  def initialize
    @read_file = nil
    @translator1 = TranslateBraille.new(self)
  end

  def read(file)
    @read_file = File.read(file).chomp
  end

  def write_braille(file)
    new_file = File.new(file, "w")
    new_file.puts(@translator1.limit_to_80_chars)
    new_file.close
  end
end
