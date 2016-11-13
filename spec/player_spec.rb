require 'player.rb'

describe Player do

  describe "attributes" do
    it "allows reading & writing to :name" do
      subject.name = "Leo"
      expect(subject.name).to eq("Leo")
    end
    it "allows reading & writing to :marker" do
      subject.marker = "X"
      expect(subject.marker).to eq("X")
    end
  end

  describe "#new" do
    it "creates an instance of Player" do
      expect(subject).to be_an_instance_of(Player)
    end
  end

end
