require "pry"
class MP3Importer
  attr_accessor :path, :files
  def initialize(path)
    @path = path
    @files = Dir[@path]
  end
  def files
    @files
  end

end