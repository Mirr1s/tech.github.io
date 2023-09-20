# Grupo Tech - Projecto 1: Logica Booleana

En este primer projecto, se van a construir diversas compuertas logicas usando como base la compuerta Nand, las compuertas que se van completando pueden ser usadas posteriormente para la realización de otras compuertas más complejas

#
#### Compuerta Not
La primera compuerta y la más sencilla, esta puede ser construida con una compuerta Nand poniendo en sus argumentos, la misma variable de entrada para los dos.

#### Compuerta And
Para esta compuerta, simplemente negamos los resultados de una compuesta Nand con la compuerta Not que ya construimos.

#### Compuerta Or
Para realizar esta, usamos la ley de morgan la cual nos dice que una ¬ (X OR Y) es equivalente a (¬X AND ¬Y), así que para obtener una Or normal sin negar, volvemos a negar la expresión, queda de esta manera: ¬(¬X AND ¬Y)

#### Compuerta Xor
Para obtener esta compuerta, nos basamos en su trabla de verdad y luego construimos la función con minterminos. Como resultado obtuvimos: (¬X AND Y) OR (X AND ¬Y).

#### Compuerta Mux
para obtener esta compuerta, nos guiamos en la tabla de verdad abreviada mostrada en la documentacion y utilizando conpuertas Nand y not mostramos que sel en 0 da como salida la entrada a y sel en 1 da como resultado da la salida la entrada b

#### Compuerta DMux
para obtener esta compuerta, utilizamos dos compuertas and para dar las repuestas de a y b en el and de la respueta a negamos sel y in normal, en el and de la respuesta b in y sel normales

#### Compuerta Not16
para obtener esta compuerta, tomamos cada elemento de la lista y lo negamos tomando encuenta cada posicion 

#### Compuerta And16
Para obtener esta compuerta, hacemos una and por cada posicion de la lista tomando en cuenta la posicion de salida

#### Compuerta Or16
Para obtener esta compuerta, hacemos una  or por cada posicion de la lista tomando en cuenta la posicion de salida

#### Compuerta Mux16
Para obtener esta compuerta s eimplemento 16 veces la compuerta Mux, teniendo 32 entradas y 16 salidas.

#### Compuerta Or8Way
Esta es una compuerta Or que recibe 8 entradas, para esto se podía armar tanto en cascada como en arbol con solo compuertas OR, en este caso optamos por armarlo en cascada-

#### Compuerta Mux4Way16
Para la implementación de la compuerta se usaron 3 compuertas Mux16

#### Compuerta Mux8Way16
Para implementar esta compuerta se usaron 2 Mux4Way16 de 4 entradas y un Mux16 de 2 entradas.

#### Compuerta DMux4Way
Para la implementación de la compuerta se usaron 2 inversores y 8 compuertas AND.

#### Compuerta Dmux8Way
Para la implementación de la compuerta se usaron 2 DMux4Way y un DMux.

#### Referencias 
1. Schocken, S., & Nisan, N. (2017). Project 01. Nand2tetris. Recuperado 7 de Septiembre de 2023, de https://www.nand2tetris.org/project01

2. Villalobos, J. (2017, 27 julio). Implementando funciones boleanas con HDL - CS01. github. Recuperado 7 de Septiembre de 2023, de https://jorovipe97.github.io/Implementando-funciones-boleanas-CS01/
