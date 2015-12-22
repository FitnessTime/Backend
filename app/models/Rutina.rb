class Rutina
	include DataMapper::Resource
	
	property :id, Serial

  	property :inicio, Date
    property :fin, Date
    property :objetivo, String
    has n, :ejercicios, :through => Resource
    belongs_to :usuario

end

