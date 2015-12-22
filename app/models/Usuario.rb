class Usuario
	include DataMapper::Resource
	
	  property :id, Serial

  	property :nombre, String
    property :contrasenia, String
    property :email, String
    has n, :rutinas

end