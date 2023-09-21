# Grupo Tech - Proyecto 2: Lógica Secuencial

En la segunda practica vamos a elaborar todos los chips descritos en el capitulo número tres, estos son: Bit, Register, RAM8, RAM64,RAM512,RAM4K,RAM16K,PC. Para la realización de estos se van a usar muchos de los chips que ya fueron terminados en la primer practica. Y de igual manera, los chips que vayamos armando se puede usar para otros en este mismo capitulo, como lo verán acontinuacion.
#
#### Bit
Para realizar este chip utilizamos Flip-flop, Invalid design y con estos dos y una compuerta mux sacamos el chip de un bit

#### Register
Este chip es la unión de varios bits dependiendo de las entradas que tengamos que registrar

#### RAM8
Este chip es la unión de varios register dependiendo de las entradas que tengamos que registrar y nos apoyamos en el DMux8Way y el Mux8Way16 para organizar donde se guardan 

#### RAM64
En este chip utilizamos el chip de RAM8 y nos volvemos a apoyar en el DMux8Way y el Mux8Way16 para organizar donde se guardan

#### RAM512
para obtener esta compuerta, nos guiamos en la tabla de verdad abreviada mostrada en la documentacion y utilizando conpuertas Nand y not mostramos que sel en 0 da como salida la entrada a y sel en 1 da como resultado da la salida la entrada b
#### RAM4K
#### RAM16K
#### PC
