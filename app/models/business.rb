class Business < ApplicationRecord
  belongs_to :city

  #Empresas por nombre de la ciudad
  def self.city_name(city_name)
    #Obtener la ciudad a que hace referencia
    city = City.find_by_name(city_name)
    Business.where(city_id: city.id)
  end

end
