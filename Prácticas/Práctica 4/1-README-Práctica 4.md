# Grupo Tech - Práctica 4
#
En esta práctica se realizó un proyecto en el que se escribió un ensamblador que traduce los programas escritos en lenguaje ensamblador simbólico a código binario.

Para crear el ensamblador, se inicia mediante la creación de una función que, en primera instancia, establece diccionarios que vinculan los valores binarios correspondientes a las instrucciones presentes en el código .asm. Estos valores binarios se asignan siguiendo las tablas proporcionadas en la sección del proyecto 6 del libro 'The Elements of Computing Systems'. Luego, se procede a analizar línea por línea el archivo que se está traduciendo, y según la naturaleza de cada línea, se asignan los valores binarios según las correspondencias definidas en los diccionarios. Los resultados de esta traducción se almacenan en archivos separados, donde cada uno contiene la traducción resultante para un caso particular. Posteriormente, estos archivos se cargan en el Assembler para efectuar la comparación con los archivos de prueba suministrados, asegurando que los resultados sean congruentes.

![Tabla 1](https://github.com/Mirr1s/tech.github.io/blob/main/imagenes/tabla1.png)


![Tabla 2](https://github.com/Mirr1s/tech.github.io/blob/main/imagenes/tabla2.png)

## Teniendo en cuenta las características del ensamblador, ¿Cuál es la principal limitante que observan? Justifique su respuesta.
La principal limitante que se observó es que se desarrolló para casos de traducción simples. En casos más complejos, el código no está preparado para manejarlos, como puede ser el enlazamiento de etiquetas, y tampoco realiza validaciones minuciosas de la sintaxis de las instrucciones. En situaciones de traducción más complejas, el código proporcionado es propenso a cometer errores, ya que fue concebido pensando en casos simples de traducción.

#
Referencias
1. Coursera. (s. f.). Unit 6.6B: Project 6 Overview: Without Programming. Recuperado el 19 de Octubre de 2023, de https://es.coursera.org/lecture/build-a-computer/unit-6-6b-project-6-overview-without-programming-o6A88
2. Shimon Schocken and Noam Nisan. (s. f.-a). Project 06. Nand2tetris. Recuperado el 19 de Octubre de 2023, de https://www.nand2tetris.org/project06
3. Shimon Schocken and Noam Nisan. (s. f.-b). The elements of computing systems (1.a ed., Vol. 1). Recuperado el 19 de Octubre de 2023, de https://www.nand2tetris.org/_files/ugd/44046b_b73759b866b249a0b3a715bf5a18f668.pdf
