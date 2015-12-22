class Ejercicio
	include DataMapper::Resource
	
	property :id, Serial

  	property :nombre, String
    property :series, Integer
    property :repeticiones, Integer
    has n, :records
    has n, :rutinas, :through => Resource

end