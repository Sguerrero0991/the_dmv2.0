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
   if vehicle.antique? == true 
      @collected_fees + 25 
      @registered_vehicles << vehicle
   elsif vehicle.electric_vehicle? == true
      @collected_fees + 200
      @registered_vehicles << vehicle
   else vehicle 
      @collected_fees + 100
      @registered_vehicles << vehicle
   end
  end

  

  
end
