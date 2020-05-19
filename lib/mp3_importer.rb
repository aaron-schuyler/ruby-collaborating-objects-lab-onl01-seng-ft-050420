require "pry"
class MP3Importer
  attr_accessor :path, :files
  def initialize(path)
    @path = path
    @files = Dir.entries(@path).reject{|entry| entry == “.” || entry == “…”}
  end
  def files
    @files
    
  end

end