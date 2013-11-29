

class Matriz

        attr_reader :fil, :col, :matrix

        def initialize(array)
	  
	    @fil = array.size
		@col = array.size
		@matrix = array;
	
	end
	
	
        
        
	def tipo
	

	  aux = 0;
    
	for i in 0...@fil do
		for j in 0...@col do
		    if (@matrix[i][j] == 0)
			aux += 1
		    end
		end
	end

	if (((aux*100)/(@fil*@col)) >= 60)

	      Dispersa.new(@matrix)
	else

	      Densa.new(@matrix)
	end

	end
	
	
        
        def +(other) #Sobrecarga del operador + para sumar dos matrices


	if (self.instance_of?(Matriz) || self.instance_of?(Densa)) && (other.instance_of?(Matriz) || other.instance_of?(Densa))


                copia = @matrix
                @fil.times do |i|
                        @col.times do |j|
                                copia[i][j] = copia[i][j] + other.matrix[i][j]
                        end
                end
        
        Matriz.new(copia)

	

	elsif self.instance_of?(Dispersa) && (other.instance_of?(Matriz) || other.instance_of?(Densa))

	
		p = self.to_densa

		(p + other)

	

	elsif other.instance_of?(Dispersa) && (self.instance_of?(Matriz) || self.instance_of?(Densa))

		p = other.to_densa

		(self + p)
	

	elsif self.instance_of?(Dispersa) && other.instance_of?(Dispersa)


		p = self.to_densa

		d = other.to_densa


		(p + d)


	end
	

	
	
        
        end
                                

        def -(other) #Sobrecarga del operador - para restar dos matrices


	if (self.instance_of?(Matriz) || self.instance_of?(Densa)) && (other.instance_of?(Matriz) || other.instance_of?(Densa))
                
                copia = @matrix
                @fil.times do |i|
                        @col.times do |j|
                                copia[i][j] = copia[i][j] - other.matrix[i][j]
                        end
                end
        
        Matriz.new(copia)


	elsif self.instance_of?(Dispersa) && (other.instance_of?(Matriz) || other.instance_of?(Densa))

	
		p = self.to_densa

		(p - other)

	

	elsif other.instance_of?(Dispersa) && (self.instance_of?(Matriz) || self.instance_of?(Densa))

		p = other.to_densa

		(self - p)
	

	elsif self.instance_of?(Dispersa) && other.instance_of?(Dispersa)


		p = self.to_densa

		d = other.to_densa


		(p - d)


	end
	

	
        
        end

        
        
        def *(other) # Sobrecarga del operador * para que multiplique dos matrices.



	if (self.instance_of?(Matriz) || self.instance_of?(Densa)) && (other.instance_of?(Matriz) || other.instance_of?(Densa))

        copia = Array.new(@fil) {Array.new(other.col)}

        for i in (0...@fil)

                for j in (0...other.col)
                
                        copia[i][j] = 0

                        for z in (0...@col)
        
                                copia[i][j] = copia[i][j] + (matrix[i][z] * other.matrix[z][j])

                         end
        
                end
        
        end
                        
                        
        Matriz.new(copia)


	elsif self.instance_of?(Dispersa) && (other.instance_of?(Matriz) || other.instance_of?(Densa))

	
		p = self.to_densa

		(p * other)

	

	elsif other.instance_of?(Dispersa) && (self.instance_of?(Matriz) || self.instance_of?(Densa))

		p = other.to_densa

		(self * p)
	

	elsif self.instance_of?(Dispersa) && other.instance_of?(Dispersa)


		p = self.to_densa

		d = other.to_densa


		(p * d)


	end
	
                


        end
        
        

        def ==(other) #Sobrecarga del operador == para poder comprobar si dos matrices son iguales

        comprobacion = true


        if(@fil == other.fil && @col == other.col)
                
                for i in (0...@fil)

                        for j in (0...@col)


                                if matrix[i][j] != other.matrix[i][j]

                                comprobacion = false
                                
                                end                
                        end
                end

                
        else
        
                comprobacion = false
                
        end

        comprobacion
        
        end
        
        
        
        def traspuesta #Metodo para hallar la traspuesta de una matriz


	if self.instance_of?(Matriz) || self.instance_of(Densa)
        
                copia = Array.new(@fil) {Array.new(@col)}
                
                for i in (0...@fil)
                        for j in (0...@col)
                                copia[i][j] = matrix[j][i]
                        end
                end
                
                Matriz.new(copia)


	elsif self.instance_of?(Dispersa)

	
	p = self.to_densa

	p.traspuesta

	
	

	end
	
        
        end


	def maximo


	if self.instance_of?(Matriz) || self.instance_of(Densa)
	
	
	numeromax = 0
	
                for i in (0...@fil)
                        for j in (0...@col)
                                
				if matrix[i][j] > numeromax

				numeromax = matrix[i][j]

				end


                        end
                end

	numeromax


	elsif self.instance_of?(Dispersa)


	p = self.to_densa


	p.maximo


	end
	


	end



	def minimo


	if self.instance_of?(Matriz) || self.instance_of(Densa)
	
	
	numeromin = 10000000
	
                for i in (0...@fil)
                        for j in (0...@col)
                                
				if matrix[i][j] < numeromin

				numeromin = matrix[i][j]

				end


                        end
                end

	numeromin



	elsif self.instance_of?(Dispersa)


	p = self.to_densa


	p.minimo


	end
	


	end


	


end
	
class Densa < Matriz

attr_reader :fil, :col, :matrix
	

	def initialize(array)

		@fil = array.size
		@col = array.size
		@matrix = array;

	end


end



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


	array = Array.new(@m) {Array.new(@n,0) }

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







