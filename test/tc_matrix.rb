require "lib/matrix/matrix_class.rb"
require "test/unit"

class Test_Matrix < Test::Unit::TestCase



	def test_suma
	  
	  assert_equal(Densa.new([[0,8,0],[0,0,4],[0,0,10]]), Dispersa.new([[0,4,0],[0,0,2],[0,0,5]]) + Dispersa.new([[0,4,0],[0,0,2],[0,0,5]]))
	  
	  
	end

	def test_resta
	  
	  assert_equal(Densa.new([[0,0,0],[0,0,0],[0,0,0]]), Dispersa.new([[0,4,0],[0,0,2],[0,0,5]]) - Dispersa.new([[0,4,0],[0,0,2],[0,0,5]]))
	  
	  
	end
	
	
	def test_producto
	  
	  assert_equal(Densa.new([[0,0,8],[0,0,10],[0,0,25]]), Dispersa.new([[0,4,0],[0,0,2],[0,0,5]]) * Dispersa.new([[0,4,0],[0,0,2],[0,0,5]]))
	  
	  
	end



end
