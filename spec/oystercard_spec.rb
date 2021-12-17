# in spec/oystercard_spec.rb
require "oystercard"

describe Oystercard do
  subject(:card) { Oystercard.new }

  it { is_expected.to respond_to(:balance) }

  describe "#balance" do
    it "should return 0 balance for a new card" do
      expect(card.balance).to eq(0)
    end
  end 

  it { is_expected.to respond_to(:top_up).with(1).argument }

  describe "#top_up" do 
    it "should top the card by the amount entered" do
      starting_balance = card.balance
      card.top_up(5)
      expect(card.balance).to eq(starting_balance + 5)
    end
  end
end

#new_card = Oystercard.new
#expect(new_card.check_balance).to eq 0

