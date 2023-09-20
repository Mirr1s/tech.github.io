# Grupo Tech - Projecto 2: Aritmetica Booleana

En la segunda practica vamos a elaborar todos los chips descritos en el capitulo número dos, estos son: HalfAdder, FullAdder, Add16, Inc,17, ALU. Para la realización de estos se van a usar muchos de los chips que ya fueron terminados en la primer practica. Y de igual manera, los chips que vayamos armando se puede usar para otros en este mismo capitulo, como lo verán acontinuacion.

#
#### HalfAdder
La primera compuerta y la más sencilla, esta puede ser construida con una compuerta Nand poniendo en sus argumentos, la misma variable de entrada para los dos.

#### Compuerta And
Para esta compuerta, simplemente negamos los resultados de una compuesta Nand con la compuerta Not que ya construimos.

#### Compuerta Or
Para realizar esta, usamos la ley de morgan la cual nos dice que una ¬ (X OR Y) es equivalente a (¬X AND ¬Y), así que para obtener una Or normal sin negar, volvemos a negar la expresión, queda de esta manera: ¬(¬X AND ¬Y)

#### Compuerta Xor
Para obtener esta compuerta, nos basamos en su trabla de verdad y luego construimos la función con minterminos. Como resultado obtuvimos: (¬X AND Y) OR (X AND ¬Y).

#### Compuerta Mux
para obtener esta compuerta, nos guiamos en la tabla de verdad abreviada mostrada en la documentacion y utilizando conpuertas Nand y not mostramos que sel en 0 da como salida la entrada a y sel en 1 da como resultado da la salida la entrada b


#### Referencias 
1. Schocken, S., & Nisan, N. (2017). Project 01. Nand2tetris. Recuperado 7 de Septiembre de 2023, de https://www.nand2tetris.org/project01

2. Villalobos, J. (2017, 27 julio). Implementando funciones boleanas con HDL - CS01. github. Recuperado 7 de Septiembre de 2023, de https://jorovipe97.github.io/Implementando-funciones-boleanas-CS01/
