require 'player.rb'

describe Player do

  describe "#new" do
    context "with two parameters" do
      it "creates a new Player" do
        expect(Player.new("Leo", "X")).to be_an_instance_of(Player)
      end
    end
    context "with other number of parameters" do
      it "returns an error" do
        expect{ Player.new("Leo") }.to raise_error(ArgumentError)
      end
    end
  end

  describe "#name" do
    it "returns Player's name" do
      expect(Player.new("Leo", "X").name).to eql("Leo")
    end
  end

  describe "#marker" do
    it "returns Player's marker" do
      expect(Player.new("Michiko", "O").marker).to eql("O")
    end
  end

end
