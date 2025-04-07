class FacilityFactory
  def initialize
  end

  def create_factories(facility_data)
    facility_data.map do |data|
      facility = Facility.new({
        name: data[:dmv_office],
        address: data[:address_li],
        phone: data[:phone]
      })
    end
  end
end