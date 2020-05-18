require "pry"
class MP3Importer
  attr_accessor :path, :files
  def initialize(path)
    @path = path
    @files = Dir.entries(@path)
  end
  def files
    @files
    binding.pry
  end

end