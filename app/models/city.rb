class City < ApplicationRecord
  belongs_to :state
  has_many :business

  #Obtener las ciudades de un estado apartir del ID del estado
  def self.state_id(state_id)
    City.find_by_id(state_id) 
  end

  #Obtener las ciudades de un estado apartir del nombre
  def self.state_name(state_name)
    #Estado por nombre
    estado = State.find_by_name(state_name)
    if !estado.nil?
      City.where(state_id: estado.id)
    end
    City.joins(:state).where('states.name =?',state_name)
  end
end
