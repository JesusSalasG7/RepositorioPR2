class Project < ApplicationRecord
  belongs_to :client
  belongs_to :status

  def self.code_project(code_project)
    #Observamos a cual proyecto esta haciendo referencia
    proyecto = Project.find_by_code(code_project)

    #Comprobar si el usuario ingresa un dato inválido
    if proyecto.nil?
      puts "Non added value in database"
      else
        #Obtener el nombre del cliente en el modelo cliente
        Client.find(proyecto.client_id).name
    end
  end
end
