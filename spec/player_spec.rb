require 'player.rb'

describe Player do

  subject do
    Player.new(:name, :marker)
  end

  it { is_expected.to respond_to(:name, :marker) }
  it { is_expected.not_to respond_to(:length, :flatten) }

  # it "validates presence of :name" do
  #   expect(subject).to validates_presence_of(name)
  # end
  #
  # it "validates presence of :marker" do
  #   expect(subject).to validates_presence_of(marker)
  # end


  # describe "#new" do
  #   it "takes 2 parameters and creates a Player object" do
  #     expect( subject ).to be_an_instance_of ( Player )
  #   end
  # end


end
