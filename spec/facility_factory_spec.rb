require 'spec_helper'

RSpec.describe FacilityFactory do
  before(:each) do
    @facility_factory = FacilityFactory.new
    @co_dmv_office_locations = DmvDataService.new.co_dmv_office_locations
  end

  it 'exists' do
    expect(@facility_factory).to be_a(FacilityFactory)
  end
end 