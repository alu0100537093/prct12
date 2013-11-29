require "lib/matrix/matrix_class.rb"
require "lib/matrix/fraccion.rb"




describe Matriz do

	before :each do

		@m1=Matriz.new([[2,5,3],[3,1,4],[1,2,3]])
		

	end


	it "Se suma correctamente 2 matrices con el operador +" do

		(@m1 + Matriz.new([[3,4,5],[5,3,2],[3,4,5]])).should == Matriz.new([[5,9,8],[8,4,6],[4,6,8]])

	end

	it "Se restan correctamente 2 matrices con el operador -" do

		(@m1 - Matriz.new([[1,4,2],[2,1,2],[1,0,1]])).should == Matriz.new([[1,1,1],[1,0,2],[0,2,2]])

	end
	
	it "Se multiplican correctamente 2 matrices con el operador *" do

		(@m1 * Matriz.new([[1,2,3],[1,1,1],[1,0,0]])).should == Matriz.new([[10,9,11],[8,7,10],[6,4,5]])

	end
	
	it "Se debe mostrar la traspuesta de una matriz" do
        
        @m1.traspuesta.should == Matriz.new([[2,3,1],[5,1,2],[3,4,3]])
	
	end
end

describe "Modificacion para poder trabajar con matrices formadas por fracciones" do

	before :each do
		
		@m2=Matriz.new([[Fraccion.new(1,2), Fraccion.new(1,2), Fraccion.new(1,3)],[Fraccion.new(1,2), Fraccion.new(1,2), Fraccion.new(1,3)],[Fraccion.new(1,2), Fraccion.new(1,2), Fraccion.new(1,3)]])
		@m3=Matriz.new([[Fraccion.new(1,2),Fraccion.new(1,2)], [Fraccion.new(1,2),Fraccion.new(1,2)], [Fraccion.new(1,2),Fraccion.new(1,2)]])
		@m4=Matriz.new([[Fraccion.new(3,4),Fraccion.new(3,4)], [Fraccion.new(3,4),Fraccion.new(3,4)], [Fraccion.new(3,4),Fraccion.new(3,4)]])
	end
	
	
	it "Suma de matrices formadas por fracciones" do
	
		(@m2 + @m2).should == Matriz.new([[Fraccion.new(1,1), Fraccion.new(1,1), Fraccion.new(2,3)], [Fraccion.new(1,1), Fraccion.new(1,1), Fraccion.new(2,3)], [Fraccion.new(1,1), Fraccion.new(1,1), Fraccion.new(2,3)]])
	
	end
	
	
end



describe "Operaciones con matrices discretas" do
	
	before :each do
	  
		@m5 = Densa.new([[0,4,0],[0,0,2],[0,0,5]])

		@m6 = Dispersa.new([[0,4,0],[0,0,2],[0,0,5]])

		@m7 = Matriz.new([[0,4,0],[0,0,2],[0,0,5]])

		@m8 = @m7.tipo
	
	end
	
	it "La matriz debe ser representada como dispersa" do
	    
		@m6.to_densa.should == @m5
	
	end

	it "La matriz de la clase Matriz se debe transformar a discreta y luego a densa" do

		@m8.to_densa.should == @m5	

	end


	it "Mostrar el maximo de la matriz" do

		@m7.maximo.should == 5	
	
	end

		it "Mostrar el minimo de la matriz" do

		@m7.minimo.should == 0
	
	end


	it "Se deben sumar 2 matrices densas" do


		(@m5 + @m5).should == Densa.new([[0,8,0],[0,0,4],[0,0,10]])
	
	end



	it "Se debe sumar 1 matriz densa con una matriz dispersa" do


		(@m5 + @m6).should == Densa.new([[0,8,0],[0,0,4],[0,0,10]])

	end

	it "Se debe sumar 2 matrices dispersas" do
		

		(@m6 + @m6).should == Densa.new([[0,8,0],[0,0,4],[0,0,10]])
	
	end


	it "Se deben restar 2 matrices densas" do


		(@m5 - @m5).should == Densa.new([[0,0,0],[0,0,0],[0,0,0]])
	
	end



	it "Se debe restar 1 matriz densa con una matriz dispersa" do


		(@m5 - @m6).should == Densa.new([[0,0,0],[0,0,0],[0,0,0]])

	end

	it "Se debe restar 2 matrices dispersas" do
		

		(@m6 - @m6).should == Densa.new([[0,0,0],[0,0,0],[0,0,0]])
	
	end	


	it "Se deben multiplicar 2 matrices densas" do


		(@m5 * @m5).should == Densa.new([[0,0,8],[0,0,10],[0,0,25]])
	
	end



	it "Se debe multiplicar 1 matriz densa con una matriz dispersa" do


		(@m5 * @m6).should == Densa.new([[0,0,8],[0,0,10],[0,0,25]])

	end

	it "Se debe multiplicar 2 matrices dispersas" do
		

		(@m6 * @m6).should == Densa.new([[0,0,8],[0,0,10],[0,0,25]])
	
	end	
	
	
	it "Se debe encontrar un valor cuyo cuadrado sea mayor igual que 16" do
	   
	   
	   @m7.encontrar{ |e| e*e >=16 }.should == [0,1]
	    
	    
	end    


end
