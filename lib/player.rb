class Player
  attr_accessor :name, :marker

  def initialize(args = {})
    self.name = args[:name]
    self.marker = args[:marker]
  end
end
