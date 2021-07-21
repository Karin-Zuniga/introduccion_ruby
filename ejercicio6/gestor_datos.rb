require 'csv'

class GestorDatos
    def self.generar_csv(batalla)
        CSV.open("batalla", "wb") do |csv|
            csv << ["Local", "Visitante", "Ganador", "Fecha"]
            csv << [batalla.pokemon_local.nombre, batalla.pokemon_visitante.nombre, batalla.ganador.nombre, Time.now]
    
        end
    end


end