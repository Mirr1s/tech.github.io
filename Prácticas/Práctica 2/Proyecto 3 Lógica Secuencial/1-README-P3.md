# Grupo Tech - Proyecto 2: Lógica Secuencial

En la segunda practica vamos a elaborar todos los chips descritos en el capitulo número tres, estos son: Bit, Register, RAM8, RAM64,RAM512,RAM4K,RAM16K,PC. Para la realización de estos se van a usar muchos de los chips que ya fueron terminados en la primer practica. Y de igual manera, los chips que vayamos armando se puede usar para otros en este mismo capitulo, como lo verán acontinuacion.
#
#### Bit
![BIT](https://github.com/Mirr1s/tech.github.io/blob/c8c0ac8acb9886055e18aa3fe835694ce9ecf5e1/imagenes/Captura.JPG)


Para realizar este chip utilizamos Flip-flop, Invalid design y con estos dos y una compuerta mux sacamos el chip de un bit

#### Register
![Register](https://github.com/Mirr1s/tech.github.io/blob/d33688a309633f3d64adae696821d0a9e9e55c5c/imagenes/register.JPG)


Este chip es la unión de varios bits dependiendo de las entradas que tengamos que registrar

#### RAM8
![RAM8](https://github.com/Mirr1s/tech.github.io/blob/b287c575d3865c54c55dca14ac862c1b21cae7a0/imagenes/RAM8.JPG)

Este chip es la unión de varios register dependiendo de las entradas que tengamos que registrar y nos apoyamos en el DMux8Way y el Mux8Way16 para organizar donde se guardan 

#### RAM64
![RAM64](https://github.com/Mirr1s/tech.github.io/blob/5e933f0d49857d86e578114184f230676e60469d/imagenes/ram64.JPG)

En este chip utilizamos el chip de RAM8 y nos volvemos a apoyar en el DMux8Way y el Mux8Way16 para organizar donde se guardan

#### RAM512
Para la RAM 512 se usa una estructura semejante a la del chip anterior solo que esta vez se aumenta la escala usando RAM 16, también se emplea una dirección de 9 bits para acceder en cada registro. 
#### RAM4K
La RAM 4K se construye con una estructura semejante a la del chip anterior solo que esta vez se aumenta la escala usando RAM 512, junto a una dirección de 12 bits para acceder en cada registro.
#### RAM16K
Para la RAM 512 se usa una estructura semejante a la del chip anterior solo que esta vez se aumenta la escala usando RAM 16, también se emplea una dirección de 9 bits para acceder en cada registro. 
#### PC
Es un contador que consta de 16 bits, en este contador se utilizan buses de 16 bits, posee 2 bits de control, uno de ellos se encarga de definir la lectura de datos, y por su parte, el otro es uno de reinicio.
