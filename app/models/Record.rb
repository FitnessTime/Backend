class Record
	include DataMapper::Resource
	
	property :id, Serial

  	property :fecha, Date
    property :kilaje, Integer
   	belongs_to :ejercicio

end
