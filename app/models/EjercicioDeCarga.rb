class EjercicioDeCarga
	include DataMapper::Resource
	
	property :id, Serial

  	property :inicio, Date
  	property :fin, Date
    property :descripcion, String
    property :aclaracion, String
    has n, :hitos
    has n, :rutinasDeCarga, :through => Resource

end