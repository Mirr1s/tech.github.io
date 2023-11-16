**Instrucciones para Compilar y Ejecutar el Juego**

1. Utilización de jackComplier para Compilar el Código:
   - Emplea jackComplier para compilar el contenido del directorio src/PigDice.

2. Utilización de VMEmulator para Ejecutar el Código VM Compilado:
   - Utiliza VMEmulator para ejecutar el código VM compilado. Abre la carpeta src/PigDice y sigue las instrucciones correspondientes.

---

**Introducción al Juego**

En este juego, el usuario se enfrenta a la computadora. Durante un turno, un jugador lanza repetidamente un dado hasta que ocurra alguna de las siguientes condiciones:

- Se obtiene un 1.
- El jugador decide detenerse.

Si se obtiene un 1, el turno del jugador concluye sin ganar puntos. Si el jugador elige detenerse, todos los puntos acumulados durante ese turno se suman a su puntuación.

**Ejemplos de Puntuación**

*Ejemplo 1:* 
El usuario lanza un 3 y decide continuar. Luego, realiza siete lanzamientos adicionales (6, 6, 6, 4, 5, 6, 1). Debido a que obtuvo un 1, el turno del usuario termina sin ganar puntos.

*Ejemplo 2:* 
La computadora realiza un número aleatorio de lanzamientos antes de detenerse (por ejemplo, 4 lanzamientos: 6, 3, 4, 2). La computadora acumula 15 puntos (6+3+4+2=15).

El control del juego vuelve al usuario, quien debe lanzar al menos una vez, y así sucesivamente.

---

**Fin del Juego**

El juego llega a su conclusión cuando un jugador alcanza un total de 20 puntos o más. Se ha ajustado el límite superior de la puntuación de 100 a 20 para evitar posibles desbordamientos de la memoria de la máquina hack.

Para obtener detalles adicionales sobre las reglas del juego, consulta: http://en.wikipedia.org/wiki/Pig_(dice_game)

*Nota:* 
Se ha implementado una clase aleatoria para generar números pseudoaleatorios. Ten en cuenta que la aleatoriedad puede estar limitada debido a que la semilla está codificada en el código fuente.

---

*Instrucciones adicionales pueden encontrarse en la documentación del juego.*
