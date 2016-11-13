class Player
  attr_accessor :name, :marker

  def initialize( options = {} )
    self.name = options[:name]
    self.marker = options[:marker]
  end
end
