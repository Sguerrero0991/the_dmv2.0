class Facility
  attr_reader :name, 
              :address, 
              :phone, 
              :services, 
              :registered_vehicles, 
              :collected_fees
  def initialize(attributes)
    @name = attributes[:name]
    @address = attributes[:address]
    @phone = attributes[:phone]
    @services = []
    @registered_vehicles = []
    @collected_fees = 0
  end

  def add_service(service)
    @services << service
  end

  def register_vehicle(vehicle)
   if vehicle.antique? 
      @collected_fees += 25
      vehicle.plate_type = :antique
   elsif vehicle.electric_vehicle? 
      @collected_fees += 200
      vehicle.plate_type = :ev
   else  
      @collected_fees += 100
      vehicle.plate_type = :regular
    end 
    vehicle.registration_date = Date.today
    @registered_vehicles << vehicle
  end

  def administer_written_test(registrant)
    if @services.include?('Written Test') && registrant.permit? && registrant.age >= 16 
      registrant.license_data[:written] = true
    else 
      registrant.license_data[:written]
    end 
  end

  def administer_road_test(registrant)
    # binding.pry
    if @services.include?('Road Test') && registrant.license_data[:written] == true
      registrant.license_data[:license] = true 
    else 
      registrant.license_data[:license]
    end
  end

  #A road test can only be administered to registrants who have passed the written test
  #For simplicity’s sake, Registrants who qualify for the road test automatically earn a license


  
end
