require 'spec_helper'

RSpec.describe Registrant do
  before(:each) do
    @registrant_1 = Registrant.new('Bruce', 18, true)
    @registrant_2 = Registrant.new('Penny', 15 )
  end

  describe '#initialize' do
    it 'can initialize' do
      expect(@registrant_1).to be_a(Registrant)
      expect(@registrant_2).to be_a(Registrant)
      expect(@registrant_1.name).to eq('Bruce')
      expect(@registrant_2.name).to eq('Penny')
      expect(@registrant_1.age).to eq(18)
      expect(@registrant_2.age).to eq(15)
    end
  end 

  describe '#permit?' do
    it 'can determine if a registrant has a permit' do
      expect(@registrant_1.permit?).to eq(true)
      expect(@registrant_2.permit?).to eq(false)
    end 
  end 

  describe '#earn_permit' do
    it 'can add a permit to a registrant' do
      expect(@registrant_2.permit?).to eq(false)
      @registrant_2.earn_permit
      expect(@registrant_2.permit?).to eq(true)
    end 
  end 
end 