# Implementar en este fichero las Pruebas Unitarias asociadas a la clase Fraccion

require "./racional.rb"
require "test/unit"

class Test_Fraccion < Test::Unit::TestCase
   def test_suma
      fraccion1 = Fraccion.new(2,1)
      fraccion2 = Fraccion.new(1,2)
      assert_equal([5,2], fraccion1.suma(fraccion2))
                   
   end

   def test_resta
      fraccion1 = Fraccion.new(2,1)
      fraccion2 = Fraccion.new(1,2)
      assert_equal([3,2], fraccion1.resta(fraccion2))
   end

   def test_producto
      fraccion1 = Fraccion.new(2,1)
      fraccion2 = Fraccion.new(1,2)
      assert_equal([2,2], fraccion1.producto(fraccion2))
   end

   def test_division
      fraccion1 = Fraccion.new(2,1)
      fraccion2 = Fraccion.new(1,2)
      assert_equal([4,1], fraccion1.division(fraccion2))
   end
end
