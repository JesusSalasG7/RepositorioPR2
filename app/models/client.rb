class Client < ApplicationRecord
  belongs_to :business

  #Obtener clientes por nombre de empresa
  def self.business_name(business_name)
    #Obtener a la empresa a que hace referencia
    empresa = Business.find_by_name(business_name)
    Client.where(business_id: empresa.id)
  end
end
