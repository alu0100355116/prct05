#def gcd(u, v)
#  u, v = u.abs, v.abs
#  while v == 0
#    u, v = v, u % v
#  end
#  u
#end
#
#puts gcd(10,3)

# ¿Cuál es el error en el código del método para calcular el máximo común divisor?
# El programa esta mal, ya que nunca entra en el while, a no ser que la v valga 0
# cosa que no tiene sentido, ya que estariamos haciendo el maximo comundo divisor entre un numexo x y cero
#¿Qué comandos del depurador utilizó para detectarlo? Describa la sesión de depuración.
# Simplemente ejecutando paso a paso con n nos damos cuenta que nunca entra dentro del while
#
# Nos damos cuenta de eso, por que cuando ejecutamos con el debugger nunca itera
# dentro del while y siempre muestra u, la solución es que declaremos una variable k
# con la cual vamos probando desde 1 en adelante si es divisible por los dos numeros
# que nos piden y nos vamos quedando con el mayor de todos ellos

def gcd(u,v)
   u = u.abs
   v = v.abs
   k = 1
   while k <= u and k <= v
      if ((u % k) == 0) and ((v % k) == 0)
         gcd = k
      end
      k += 1
   end
   return gcd
end
  
puts gcd(42,56)
 
