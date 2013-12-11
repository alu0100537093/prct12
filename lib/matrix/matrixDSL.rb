class MatrixDSL
    
attr_accessor :operando, :operador


	def initialize(op, &block)
		self.operador = op		#Valor con el operador
		self.operando = []		#Array de operandos
		instance_eval &block
	end
	
	
	
	def to_s
		salida = operador
		if (operador == "Suma") 
			salida << "\n#{'=' * operador.size}\n\n"
			salida << " = "
			salida << (operando[0]+operando[1]).to_s
			salida #Resultado de la suma
   
		elsif (operador == "Resta")
			salida << "\n#{'=' * operador.size}\n\n"
			salida << " = "
			salida << (operando[0]-operando[1]).to_s 
			salida #Resultado de la resta
   
		elsif (operador == "Producto")
			salida << "\n#{'=' * operador.size}\n\n"
			salida << " = "
			salida << (operando[0]*operando[1]).to_s 
			salida #Resultado del producto
		end
	end
	
	
	def resultado # Metodo para el resultado de las operaciones; facilita el trabajo con expectativas
		salida = operador
		
		if (operador == "Suma")
			(operando[0]+operando[1]).to_s
		elsif (operador == "Resta")
			(operando[0]-operando[1]).to_s
		elsif (operador == "Producto")
			(operando[0]*operando[1]).to_s
		end
	end
	
	
	def mostrar(mod) #Metodo que incluye dos formas de mostrar el resultado
    
		if (mod == "console") #Por pantalla
			puts self 
        elsif (mod == "file")
			fsalida=File.new('pruebas.txt','a+') #Por fichero(sin sobreescribir)
			fsalida.puts self
			fsalida.close
		end
	end
	
	def operand(array)
     
      x = Matriz.new(array)
      
      copia2 = x.tipo
      
      self.operando.push copia2
  
  
     end
	
	
	
end
    
    
