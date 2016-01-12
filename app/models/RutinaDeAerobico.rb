class RutinaDeAerobico
	include DataMapper::Resource
	
	property :id, Serial

  	property :inicio, Date
  	property :fin, Date
    property :descripcion, String
    property :aclaracion, String
    has n, :ejerciciosDeAerobico, :through => Resource

end