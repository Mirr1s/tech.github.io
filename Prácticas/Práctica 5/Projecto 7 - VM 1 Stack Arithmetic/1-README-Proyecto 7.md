# Grupo Tech - Proyecto 7
#
En esta práctica se implementó un traductor VM, el cual, como su nombre lo dice, traduce los comandos escritos en el lenguaje VM relacionados con la aritmetica de Pilas(Stacks) y los comandos relacionados al acceso a memoria, ya que en el siguiente proyecto es donde se va a complementar este traductor.

Para realizar este traductor, primero se implementaron las traducciones de cada comando por separado y luego se estandarizaron para que funcionen con cualquier combinación de pop/push y tipos de variable posibles. Como se muestra acontinuación el codigo en el lenguaje Hack Assembly para la instrucción "push constant i"

![image](https://github.com/Mirr1s/tech.github.io/assets/113645885/e8a39923-7cd5-42e9-ac3e-138fc50f7ecb)

Este traductor fue implementado usando un Jupiter Notebook en la herramienta de Google Colaboratory, para que este pueda hacer las traducciones, hay que cargar los archivos .vm de los test que se vayan a traducir, y poner sus nombres al final del codigo.

![image](https://github.com/Mirr1s/tech.github.io/assets/113645885/6c7429a9-8008-4462-8cc8-f9791904ef3d)

![image](https://github.com/Mirr1s/tech.github.io/assets/113645885/89953fbf-2d83-4e34-b64c-1c65d133702f)

Los resultados del traductor fueron buenos, todos los archivos generados pasaron los test preparados por los creadores de Nand2Tetris.


#
Referencias
1. Su, Yang (2022). Nand2Tetris Project 07 (Part 1) arithmetic logic and memory segment operation commands. Youtube. Recuperado el 30 de Octubre de 2023 de https://www.youtube.com/watch?v=vj1veGsRdbw
2. Shimon Schocken and Noam Nisan. (s. f.-a). Project 07. Nand2tetris. Recuperado el 30 de Octubre de 2023, de https://www.nand2tetris.org/project07
3. Shimon Schocken and Noam Nisan. (s. f.-b). The elements of computing systems. Recuperado el 30 de Octubre de 2023, de https://drive.google.com/file/d/1BPmhMLu_4QTcte0I5bK4QBHI8SACnQSt/view
