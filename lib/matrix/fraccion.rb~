
class Fraccion 
 
        include Comparable

        def initialize(n,d) #Inicializacion del numerador y denominador de la fraccion.
                
          m = mcd(n,d)
          
          n = n/m
          
          d = d/m
          
          @n, @d = n, d
                
                
                
        end
        

        
        def mcd(n,d) #Metodo que devuelve el maximo comun divisor
          
          n, d = n.abs, d.abs
          
          while d != 0
            
            n, d = d, n % d
            
          end
          
          n
          
        end
        
        def num #Metodo que devuelve el numerador
        
                @n
                
        end
        
        
        def den #Metodo que devuelve el denominador
                
                @d
                
        end
        
        
        def mostrar #Metodo para mostrar la fracción en el formato a/b 
                        
                "#{@n}/#{@d}"
                
        end
        
        def mostrar_float #Metodo para mostrar la fracción en el formato flotante
                
                @n.to_f/@d.to_f        
                
                
                
        end
        
        
        def == (other) #Metodo para que el operador == compare dos fracciones
        
                if (@n == other.num) && (@d == other.den)
                        
                        true
                        
                else
                        
                        false
                
                end
                
        end
        
        
        def abs #Metodo que devuelve el valor absoluto de una fraccion
        
                if (@n < 0) && (@d < 0)
                
                        Fraccion.new(@n * (-1), @d * (-1))
                
                elsif (@n < 0)
                        
                        Fraccion.new(@n * (-1), @d )
                        
                elsif (@d < 0)
                
                        Fraccion.new(@n, @d * (-1))
                        
                else 
                
                        Fraccion.new(@n, @d)
                        
                end

        end
        
        
        def reciprocal #Metodo que calcula el reciproco de una fraccion.
        
                Fraccion.new(@d, @n)
        
        end
        
        
        def opuesto #Metodo que calcula el opuesto de una fraccion.
        
                Fraccion.new(-@n, @d)
                
        end
        
        
        def + (other) #Metodo + que realiza la suma de fracciones.
        
                Fraccion.new(@d * other.num + @n * other.den, @d * other.den) #La fraccion resultante esta simplificada puesto que ese proceso se realiza en el initialize.
                
        end
        
        
        def - (other) #Metodo para restar fracciones

                Fraccion.new(other.den * @n - other.num * @d, other.den * @d)
        
        end
        
        
        def * (other) #Metodo para multiplicar fracciones

                Fraccion.new(other.num * @n, other.den * @d)
        
        end
        
        def / (other) #Metodo para dividir fracciones

                Fraccion.new(@n * other.den , @d * other.num)

        end
        
        def % (other) #Metodo para calcular el modulo de dos fracciones

                Fraccion.new(0,1)
                
                
        end
                
        
=begin
                        def < (other) #Metodo para comprobar si una fraccion es menor que otra.

                                mostrar < other.mostrar
                
                        end


                        def > (other) #Metodo para comprobar si una fraccion es mayor que otra.

                                mostrar > other.mostrar
                
                        end


                        def <= (other) #Metodo para comprobar si una fraccion es menor o igual que otra.
                
                                mostrar <= other.mostrar
                
                        end


                        def >= (other) #Metodo para comprobar si una fraccion es mayor o igual que otra.

                                mostrar >= other.mostrar
                
                        end

=end

                        def <=> (other) #Metodo para comparar fracciones.
                        
                                mostrar <=> other.mostrar
                        
                        end

        
        
        
end