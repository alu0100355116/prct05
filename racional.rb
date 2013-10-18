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
      self.numerador = ((self.numerador * fraccion1.denominador) + (self.denominador * fraccion1.numerador))
      self.denominador = self.denominador * fraccion1.denominador
   end
   
   def resta (fraccion1)
      fraccionR = Fraccion.new(1,1)
      fraccionR.numerador = (self.numerador * fraccion1.denominador) - (self.denominador * fraccion1.numerador)
      fraccionR.denominador = self.denominador * fraccion1.denominador
      return fraccionR
   end
   
   def producto (fraccion1)
      self.numerador = self.numerador * fraccion1.numerador
      self.denominador = self.denominador * fraccion1.denominador
   end
   
   def division (fraccion1)
      self.numerador = self.numerador * fraccion1.denominador
      self.denominador = self.denominador * fraccion1.numerador
   end
end

fraccion1 = Fraccion.new(2,1)
fraccion2 = Fraccion.new(3,6)
fraccionResultado = Fraccion.new(1,1)
fraccion1.to_s();
fraccion2.to_s();

#fraccionResultado = fraccion1.suma(fraccion2)
#fraccionResultado.to_s()

#fraccionResultado = fraccion1.resta(fraccion2)
#fraccionResultado.to_s()

#fraccionResultado = fraccion1.producto(fraccion2)
#fraccionResultado.to_s()

#fraccionResultado = fraccion1.division(fraccion2)
#fraccionResultado.to_s()

