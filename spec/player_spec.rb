require 'player.rb'

describe Player do

  let (:player) { Player.new("Leo", "X") }

  describe "attributes" do
    it "allows reading from :name" do
      expect(player.name).to eq("Leo")
    end

    it "allows writing to :name" do
      player.name = "Michiko"
      expect(player.name).to eq("Michiko")
    end
  end

end
