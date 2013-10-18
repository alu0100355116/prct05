# Implementar en este fichero la clase para crear objetos racionales

require "./gcd.rb"

class Fraccion
  
  attr_accessor :numerador,:denominador
  
   def initialize(a, b)
      #atributos
      num = gcd(a,b) # Usamos el maximo comundo divisor para minimizar
      @numerador = a / num;
      @denominador = b / num;
   end
   
   
   def to_s()
      puts " #{@numerador} / #{@denominador}"
   end
   
   def suma (fraccion1)
      numerador = ((self.numerador * fraccion1.denominador) + (self.denominador * fraccion1.numerador))
      denominador = self.denominador * fraccion1.denominador
      return numerador,denominador
   end
   
   def resta (fraccion1)
      numerador = (self.numerador * fraccion1.denominador) - (self.denominador * fraccion1.numerador)
      denominador = self.denominador * fraccion1.denominador
      return numerador,denominador
   end
   
   def producto (fraccion1)
      numerador = self.numerador * fraccion1.numerador
      denominador = self.denominador * fraccion1.denominador
      return numerador,denominador
   end
   
   def division (fraccion1)
      numerador = self.numerador * fraccion1.denominador
      denominador = self.denominador * fraccion1.numerador
      return numerador,denominador
   end
end

#fraccion1 = Fraccion.new(2,1)
#fraccion2 = Fraccion.new(3,6)
#puts "#{fraccion1.suma(fraccion2)}"

