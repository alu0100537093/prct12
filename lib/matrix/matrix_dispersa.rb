require "matrix_class.rb"

class Dispersa < Matriz
	
	attr_reader :contador, :vectordatos, :vectorposicion, :m, :n

	def initialize(array)

	@m = array.size
	@n = array.size

	@vectordatos = Array.new(@m*@n)
	@vectorposicion = Array.new(@m*@n) { Array.new(2)}
	
	@contador = 0

	for i in 0...array.size do
	
		for j in 0...array.size do

			if array[i][j] != 0
		
			@vectordatos[@contador] = array[i][j]
			
			@vectorposicion[@contador][0] = i
			@vectorposicion[@contador][1] = j 			
			
			@contador += 1

			end
		end

	end

	end



	def to_densa


	array = Array.new(@m,0) {Array.new(@n,0) }

	for i in 0...@m 
	
		for j in 0...@n

			for z in 0...@vectordatos.size


				if @vectorposicion[z][0] == i && @vectorposicion[z][1] == j

				
				array[i][j] = @vectordatos[z]

				end

			
			end
		
		end

	end

	
	Densa.new(array)


	end



end



