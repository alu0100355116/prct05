# Implementar en este fichero la clase para crear objetos racionales

require "./gcd.rb"

class Fraccion
   def initialize(a, b)
      #atributos
      @numerador = a
      @denominador = b
   end
   
   def to_s()
      puts "#{@numerador} / #{@denominador}"
   end
   
   def suma (fraccion1)
     
   end
   
   def resta (fraccion1)
     
   end
   
   def producto (fraccion1)
   
   end
   
   def division (fraccion1)
    
   end
end

fraccion2 = Fraccion.new(2,1)
fraccion2.to_s();