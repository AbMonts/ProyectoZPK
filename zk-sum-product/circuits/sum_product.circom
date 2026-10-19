pragma circom 2.0.0;

template SumProd() {
    signal input a;
    signal input b;
    
    signal output sum;
    signal output product;

    // constraints
    sum <== a + b; 
    product <== a * b; 
}

// Esto le dice a Circom cuál es el componente principal que va a compilar
component main = SumProd(); 
