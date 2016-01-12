class Estadistica
	include DataMapper::Resource
	
	property :id, Serial

  	property :registroDePasos, Integer
  	property :registroDeKilometrosRecorridos, Integer

end