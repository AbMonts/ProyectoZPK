pragma circom 2.0.0;

template Multiplicador() {
    signal input a;
    signal input b;
    signal output c; // Corrección: 'output' para la salida

    // Esto obliga a que 'c' sea estrictamente el resultado de 'a * b'
    c <== a * b; 
}

// Esto le dice a Circom cuál es el componente principal que va a compilar
component main = Multiplicador(); 
