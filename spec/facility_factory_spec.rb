require 'spec_helper'

RSpec.describe FacilityFactory do
  before(:each) do
    @facility_factory = FacilityFactory.new
    @co_dmv_office_locations = DmvDataService.new.co_dmv_office_locations
    @new_york_facilities = DmvDataService.new.ny_dmv_office_locations
    
    # binding.pry
  end

  it 'exists' do
    expect(@facility_factory).to be_a(FacilityFactory)
  end

  it 'creates a CO location' do
    facilities = @facility_factory.create_factories("Colorado", @co_dmv_office_locations)
    expect(facilities).to be_a(Array)
    
    expect(facilities[0]).to be_a(Facility)
    expect(facilities[0].name).to eq("DMV Tremont Branch")
    expect(facilities[0].address).to eq("2855 Tremont Place")
    expect(facilities[0].phone).to eq("(720) 865-4600")
  end

  it 'creates a NY location' do
    facilities = @facility_factory.create_factories("New York", @new_york_facilities = DmvDataService.new.ny_dmv_office_locations)
    expect(facilities).to be_a(Array)
    
    expect(facilities[0]).to be_a(Facility)
    expect(facilities[0].name).to eq("LAKE PLACID")
    expect(facilities[0].address).to eq("2693 MAIN STREET")
    expect(facilities[0].phone).to eq(nil)
  end

  it 'creates a CO location' do
    facilities = @facility_factory.create_factories("Missouri", )
    expect(facilities).to be_a(Array)
    
    expect(facilities[0]).to be_a(Facility)
    expect(facilities[0].name).to eq("LAKE PLACID")
    expect(facilities[0].address).to eq("2693 MAIN STREET")
    expect(facilities[0].phone).to eq(nil)
  end
end 