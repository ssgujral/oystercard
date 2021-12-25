# in spec/oystercard_spec.rb
require "oystercard"

describe Oystercard do
  subject(:card) { Oystercard.new }

  it { is_expected.to respond_to(:balance) }

  describe "#balance" do
    it "returns 0 balance for new card" do
      expect(card.balance).to eq(0)
    end
  end 

  it { is_expected.to respond_to(:top_up).with(1).argument }

  describe "#top_up" do 
    it "tops up the card by the amount entered" do
      starting_balance = card.balance
      card.top_up(5)
      expect(card.balance).to eq(starting_balance + 5)
    end

    it "gives error if user tries to top up beyond the maximum balance" do
      top_up_limit = Oystercard::TOP_UP_LIMIT
      subject.top_up top_up_limit
      expect { subject.top_up 1 }.to raise_error("Your Oystercard balance cannot exceed £#{top_up_limit}.")
    end
  end

  describe "#deduct" do
    it "deducts the amount entered from the user's Oystercard balance" do
      pre_deduction_balance = card.balance
      card.deduct(5)
      expect(card.balance).to eq(pre_deduction_balance - 5)
    end  
  end
end
