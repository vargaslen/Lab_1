Objetivos

o	Ganar un poco de base en Ruby
https://www.codecademy.com/tracks/ruby
o	Instalar control de versiones:
https://desktop.github.com/		# para windows

o	Instalar Ruby on Rails:
http://rubyonrails.org.es/instala.html	# plataformas varias

https://medium.com/ruby-on-rails-web-application-development/how-to-install-rubyonrails-on-windows-7-8-10-complete-tutorial-2017-fc95720ee059

o	Instalar Rspec (ejecución de pruebas)
Desde el IDE (Atom) instalado en el paso anterior (u otro de tu preferencia), edita el archivo Gemfile y agrega la línea: gem 'rspec'.
Ubícate en tu directorio Lab_1 y ejecuta: bundle update
Esto instalará el soporte para ejecutar los tests que se piden en este laboratorio.


Ruby Intro
=============

Esta tarea de 3 partes da alguna práctica básica en Ruby, así como también hace que las pruebas (test) sean una parte regular de tu flujo de trabajo.



Metas de aprendizaje
--------------
Después de completar esta tarea, sabrás cómo:

* Escribir código simple que utilice construcciones básicas en el lenguaje Ruby, incluidos métodos y argumentos, condicionales, manipulación de cadenas y matrices, expresiones regulares y mecanismos básicos de programación orientada a objetos
* Comprender las convenciones del proyecto Ruby para saber dónde se encuentran los archivos de código y de prueba en la jerarquía de directorios de un proyecto
* Ejecutar pruebas individuales o conjuntos de pruebas utilizando la herramienta de prueba de la unidad RSpec
* Comprender la sintáxis básica de las pruebas de unidad RSpec
 
Visión de conjunto
--------

** Puede encontrar útil la documentación de Ruby en ruby-doc.org (https://ruby-doc.org) . **

El informe para esta tarea sigue una convención Ruby bastante estándar para las bases de código: los archivos de código fuente se almacenan en `lib /` y los archivos de prueba se almacenan en `spec /`.

Colocamos el "código de inicio" en `lib / ruby_intro.rb` .

Sin embargo, puedes probar cada una de las 3 partes por separado. Los archivos
`spec / part [123] _spec.rb` contiene pruebas de RSpec para cada uno de las tres partes. Por ejemplo, para probar sus respuestas a la Parte 1, tipee  `rspec
spec / part1_spec.rb`. `rspec` sin argumentos ejecuta las pruebas en todos
los archivos `spec / * _ spec.rb`.

* Los números de línea en el informe de error RSpec
dan orientación sobre qué pruebas fallaron. Puede consultar la documentación RSpec
 (http://rspec.info) para ver cómo puede ser utilizado el archivo `.rspec` para personalizar el formato de salida.



# 1. Matrices, Hashes y Enumerables

Consulte la [documentación de Ruby 2.x] (http://ruby-doc.org) en `Array`,`Hash` y` Enumerable` ya que ayudaría mucho con estos ejercicios.

0. Define un método `sum (array)` que tome una matriz de enteros como argumento y devuelva la suma de sus elementos. Para una matriz vacía, debe devolver cero. Ejecute las pruebas asociadas ejecutando: `$ rspec spec / part1_spec.rb: 5`

0. Defina un método `max_2_sum (array)` que toma una matriz de enteros como argumento y devuelve la suma de sus dos elementos más grandes. Para una matriz vacía, debe devolver cero. Para una matriz con solo un elemento, debe devolver ese elemento. Ejecute las pruebas asociadas a través de: `$ rspec spec / part1_spec.rb: 23`

0. Defina un método `sum_to_n? (Array, n)` que tome una matriz de enteros y un entero adicional, n, como argumentos y devuelve verdadero si dos elementos de la matriz de enteros suman a n. `sum_to_n? ([], n)` debería devolver falso para cualquier valor de n, por definición. Ejecute las pruebas asociadas mediante: `$ rspec spec / part1_spec.rb: 42`

Puede verificar su progreso en todo lo anterior ejecutando `$ rspec spec / part1_spec.rb`.

# 2. Cadenas y expresiones regulares

Verifique la documentación en String y Regexp ya que podrían ayudar tremendamente con estos ejercicios. :-)

0. Defina un método `hello (nombre)` que tome una cadena que represente un nombre y devuelva la cadena "Hola", concatenada con el nombre. Ejecute las pruebas asociadas a través de: `$ rspec -e '#hello' spec / part2_spec.rb`

0. Defina un método `starts_with_consonant? (S)` que tome una cadena y devuelva verdadero si comienza con una consonante y falso de lo contrario. (Para nuestros propósitos, una consonante es cualquier letra que no sea A, E, I, O, U.) NOTA: ¡asegúrese de que funciona tanto para mayúsculas como minúsculas y para no letras! Ejecute pruebas asociadas a través de: `$ rspec -e '#starts_with_consonant?' spec / part2_spec.rb`

0. Defina un método `binary_multiple_of_4? (S)` que tome una cadena y devuelva verdadero si la cadena representa un número binario que es un múltiplo de 4. NOTA: ¡asegúrese de que devuelve falso si la cadena no es un número binario válido! Ejecute las pruebas asociadas a través de: `$ rspec -e '# binary_multiple_of_4?' spec / part2_spec.rb`

Puede verificar su progreso en todo lo anterior ejecutando `$ rspec spec / part2_spec.rb`.

# 3. Conceptos básicos orientados a objetos


Define una clase `BookInStock` que representa un libro con un ISBN
número, `isbn`, y precio del libro como un número de coma flotante,
`precio`, como atributos. Ejecute pruebas asociadas a través de: `$ rspec -e 'getters y setters' spec / part3_spec.rb`

El constructor debe aceptar el número de ISBN
(una cadena, ya que en la vida real los números ISBN pueden comenzar con cero y pueden
incluir guiones) como primer argumento y precio como segundo argumento, y
debería levantar `ArgumentError` (uno de los tipos de excepciones incorporadas de Ruby) si
el número de ISBN es la cadena vacía o si el precio es menor que o
igual a cero. Incluya los getters y setters apropiados para estos
atributos. Ejecute pruebas asociadas a través de: `$ rspec -e 'constructor' spec / part3_spec.rb`

Incluye un método `price_as_string` que devuelve el precio de
el libro formateado con un signo de dólar principal y dos decimales, es decir, un precio
de 20 debe formatear como "$ 20.00" y un precio de 33.8 debe formatear como
"$ 33.80". Ejecute pruebas asociadas a través de: `$ rspec -e '#price_as_string' spec / part3_spec.rb`

Puede verificar su progreso en todo lo anterior ejecutando `rspec spec / part3_spec.rb`.
