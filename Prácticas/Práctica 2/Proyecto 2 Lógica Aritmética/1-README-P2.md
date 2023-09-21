# Grupo Tech - Projecto 2: Aritmetica Booleana

En la segunda practica vamos a elaborar todos los chips descritos en el capitulo número dos, estos son: HalfAdder, FullAdder, Add16, Inc,17, ALU. Para la realización de estos se van a usar muchos de los chips que ya fueron terminados en la primer practica. Y de igual manera, los chips que vayamos armando se puede usar para otros en este mismo capitulo, como lo verán acontinuacion.
#
#### HalfAdder
Para realizar el medio sumador, nos basamos principalmente en el diagrama de esta función, más especificamente en el siguiente:

![HalfAdder](https://github.com/Mirr1s/tech.github.io/assets/113645885/0a0dcabe-de6c-44ae-8eb9-9fb49de0da56)

Gupta, Sourav. (2018) Half Adder Circuit and its Construction [png]. Circuit Digest. https://circuitdigest.com/tutorial/half-adder-circuit-and-its-construction

Por lo que se puede observar, este tiene dos entradas A y B y dos salidas, que es la suma y el carry. Para realizar esta operación se hace uso de una compuerta XOR para la suma y una compuerta AND para el carry.

```HDL
    CHIP HalfAdder {
    IN a, b;    // 1-bit inputs
    OUT sum,    // Right bit of a + b 
        carry;  // Left bit of a + b

    PARTS:
    // Put your code here:
    Xor(a=a, b=b, out=sum);
    And(a=a, b=b, out=carry);
    }
```

#### FullAdder
Al igual que el medio sumador, para el sumador completo nos vamos a basar en el diagrama de la función. 

![FullAdder](https://github.com/Mirr1s/tech.github.io/assets/113645885/e29fc2f2-fb61-4be2-bbdc-0da905a8bcff)

Gupta, Sourav. (2018) Full Adder Circuit and its Construction [png]. Circuit Digest. https://circuitdigest.com/tutorial/full-adder-circuit-theory-truth-table-construction

El sumador completo tiene 3 entradas, A, B y un carry-in. Al igual que el medio sumador este tambien tiene dos salidas, la suma y el carry out. Para construir este chip se puede decir que se hace uso de la estructura de dos HalfAdders(sin usar el chip como tal, aunque esto tambien es una opción) más una compuerta or al final. A el primer HalfAdder entran A Y B y salen los pines que llamaremos C1(carry1) y S1(suma1), al segundo HalfAdder Entra el resultado del primero más el carry-in de entrada, y nos da el resultado final de la suma. Luego los dos carry de estos HalfAdder entran en una compuerta OR para dar el carry-out en la salida. El codigo es el siguiente:

```HDL
    CHIP FullAdder {
    IN a, b, c;  // 1-bit inputs
    OUT sum,     // Right bit of a + b + c
        carry;   // Left bit of a + b + c

    PARTS:
    // Put you code here:
    Xor(a=a, b=b, out=out1);
    And(a=a, b=b, out=out2);
    Xor(a=out1, b=c, out=sum);
    And(a=out1, b=c, out=out3);
    Or(a=out2, b=out3, out=carry);
    }
```

#### Add16
Esta es una función para sumar numeros de 16 bits, las entradas A y B estáran dadas por los dos numeros de 16 bits, luego la entrada c en el primer sumador será 0 ya que no hemos sumado nada aún, esta entrada pasará a ser el carry del sumador previo. Esto se repetirá hasta llegar al ultimo bit en donde el carry no va a importar (esto descrito por el mismo chip, no tomamos en cuenta el exceso luego de realizar toda la suma)

```HDL
    CHIP Add16 {
    IN a[16], b[16];
    OUT out[16];

    PARTS:
    // Put you code here:
    FullAdder(a=a[0], b=b[0], c=false, sum=out[0], carry=carry1);
    FullAdder(a=a[1], b=b[1], c=carry1, sum=out[1], carry=carry2);
    FullAdder(a=a[2], b=b[2], c=carry2, sum=out[2], carry=carry3);
    FullAdder(a=a[3], b=b[3], c=carry3, sum=out[3], carry=carry4);
    FullAdder(a=a[4], b=b[4], c=carry4, sum=out[4], carry=carry5);
    FullAdder(a=a[5], b=b[5], c=carry5, sum=out[5], carry=carry6);
    FullAdder(a=a[6], b=b[6], c=carry6, sum=out[6], carry=carry7);
    FullAdder(a=a[7], b=b[7], c=carry7, sum=out[7], carry=carry8);
    FullAdder(a=a[8], b=b[8], c=carry8, sum=out[8], carry=carry9);
    FullAdder(a=a[9], b=b[9], c=carry9, sum=out[9], carry=carry10);
    FullAdder(a=a[10], b=b[10], c=carry10, sum=out[10], carry=carry11);
    FullAdder(a=a[11], b=b[11], c=carry11, sum=out[11], carry=carry12);
    FullAdder(a=a[12], b=b[12], c=carry12, sum=out[12], carry=carry13);
    FullAdder(a=a[13], b=b[13], c=carry13, sum=out[13], carry=carry14);
    FullAdder(a=a[14], b=b[14], c=carry14, sum=out[14], carry=carry15);
    FullAdder(a=a[15], b=b[15], c=carry15, sum=out[15], carry=carry16);
    }
```

#### Inc16
Este nos permite incrementa en una unidad un numero de 16 bits. Para su realización se usaron HalfAdders.
Para el primero, su entrada B se componía del primer bit del numero y su entrada A se componía de un TRUE que es el 1 que estamos añadiendo.
Luego de esto, el resto de medio sumadores siguen el mismo patrón, pero en lugar de tener un TRUE en A, van a tener el carry del anterior sumador. Como se muestra en el diagrama

![Inc16](https://github.com/Mirr1s/tech.github.io/assets/113645885/15d4b75a-bc85-4d58-ab95-373272e90881)

Anónimo(2022) Inc16 [png]. nand2tetris. https://gittest2121.gitbook.io/nand2tetris/combinational-chips/inc16-chip

Aqui el codigo

```
    CHIP Inc16 {
    IN in[16];
    OUT out[16];

    PARTS:
    // Put you code here:
    HalfAdder(a=true, b=in[0], sum=out[0], carry=carry1);
    HalfAdder(a=carry1, b=in[1], sum=out[1], carry=carry2);
    HalfAdder(a=carry2, b=in[2], sum=out[2], carry=carry3);
    HalfAdder(a=carry3, b=in[3], sum=out[3], carry=carry4);
    HalfAdder(a=carry4, b=in[4], sum=out[4], carry=carry5);
    HalfAdder(a=carry5, b=in[5], sum=out[5], carry=carry6);
    HalfAdder(a=carry6, b=in[6], sum=out[6], carry=carry7);
    HalfAdder(a=carry7, b=in[7], sum=out[7], carry=carry8);
    HalfAdder(a=carry8, b=in[8], sum=out[8], carry=carry9);
    HalfAdder(a=carry9, b=in[9], sum=out[9], carry=carry10);
    HalfAdder(a=carry10, b=in[10], sum=out[10], carry=carry11);
    HalfAdder(a=carry11, b=in[11], sum=out[11], carry=carry12);
    HalfAdder(a=carry12, b=in[12], sum=out[12], carry=carry13);
    HalfAdder(a=carry13, b=in[13], sum=out[13], carry=carry14);
    HalfAdder(a=carry14, b=in[14], sum=out[14], carry=carry15);
    HalfAdder(a=carry15, b=in[15], sum=out[15], carry=carry16);
    }
```

#### ALU
La más dificil de las 5, la ALU. Esta se encarga de realizar operaciones logicas y aritmeticas dependiendo de muchos factores de entrada, la alu que se construyó podía realizar varias operaciones: convertir en 0 las entradas, negar las entradas, sumar las entradas, aplicar una AND a las entradas y negar las salidas.

Primero se realizaron las conversiones a 0, los resultados son controlados por multiplexores que elegían en base a la entrada correspondiente, en este caso ZX y ZY, si estas eran uno se iba a hacer la conversión a 0.
Luego, nos encargabamos de la negacion de entradas con otro multiplexor que elegía la salida en base a las entradas NX y NY, si estas eran uno se iba a negar la entrada, aún si esta estaba en 0 por el anterior comando.
Luego pasamos a realizar la suma y el And, la salida va a ser escogida por otro multiplexor y la entrada f va a ser la encargada de esto. f=1 para la suma y f=0 para el AND.
Ya para terminar, la negación en la salida que al igual que el resto de "elecciones" se va a hacer con un multiplexor, la entrada encargada de controlar esto es "no".

Por ultimo hay que realizar las salidas de status, ng (Not greater than zero) y zr (equals to zero).

Para la ng solo hace falta ver el bit que nos da el signo de el numero de 16 bits.
Para zr se usan ORs para comprobar que todo sea 0 (ya que en la or, si ambos son 0 nos va a volver a dar 0, si alguno llega a ser 1 ya no sería igual a cero), y para no tener problemas con los bits, separamos la salida out en dos partes iguales de 8 bits y usamos dos compuertas OR8WAY, que luego conectamos sus resultados con una simple OR y el resultado de esta lo negamos para que, si es igual a cero obtengamos un 1 (true/verdad).

Aqui el codigo

```
    CHIP ALU {
    IN  
        x[16], y[16],  // 16-bit inputs        
        zx, // zero the x input?
        nx, // negate the x input?
        zy, // zero the y input?
        ny, // negate the y input?
        f,  // compute out = x + y (if 1) or x & y (if 0)
        no; // negate the out output?

    OUT 
        out[16], // 16-bit output
        zr, // 1 if (out == 0), 0 otherwise
        ng; // 1 if (out < 0),  0 otherwise

    PARTS:
    // Put you code here:
    Mux16(a=x, b=false, sel=zx, out=zerox);
    Mux16(a=y, b=false, sel=zy, out=zeroy);

    Not16(in=zerox, out=notx);
    Mux16(a=zerox, b=notx, sel=nx, out=outx);
    Not16(in=zeroy, out=noty);
    Mux16(a=zeroy, b=noty, sel=ny, out=outy);
    
    Add16(a=outx, b=outy, out=addout);
    And16(a=outx, b=outy, out=andout);

    Mux16(a=andout, b=addout, sel=f, out=out1);

    Not16(in=out1, out=notout);

    Mux16(a=out1, b=notout, sel=no, out=outf, out[15]=ng, out[0..7]=outl, out[8..15]=outr);

    Or16(a=outf, b=false, out=out); 

    Or8Way(in=outl, out=outz1);
    Or8Way(in=outr, out=outz2);
    Or(a=outz1, b=outz2, out=outzf);
    Not(in=outzf, out=zr);
    }
```


#### Referencias 
1. Schocken, S., & Nisan, N. (2017). Project 02. Nand2tetris. Recuperado 17 de Septiembre de 2023, de https://www.nand2tetris.org/project02

2. Villalobos, J. (2017, 2 Agosto). Implementando una ALU - CS02. github. Recuperado 17 de Septiembre de 2023, de https://jorovipe97.github.io/ALU/#implementando-la-alu

3. Anónimo(2022). Inc16. nand2tetris. Recuperado el 20 de Septiembre de 2023, de https://gittest2121.gitbook.io/nand2tetris/combinational-chips/inc16-chip

4. Gupta, Sourav. (2018). Half Adder Circuit and its Construction. Circuit Digest. Recuperado el 20 de Septiembre de 2023, de https://circuitdigest.com/tutorial/half-adder-circuit-and-its-construction

5. Gupta, Sourav. (2018). Full Adder Circuit and its Construction. Circuit Digest. Recupero el 20 de Septiembre de 2023, de https://circuitdigest.com/tutorial/full-adder-circuit-theory-truth-table-construction
