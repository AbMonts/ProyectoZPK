
pragma circom 2.2.3;

include "circomlib/circuits/poseidon.circom";

template Autenticacion() {

    // Dato privado: el secreto del usuario
    signal input secreto;

    // Dato público: hash registrado previamente
    signal input compromiso;

    // Calculamos Poseidon del secreto
    component hash = Poseidon(1);

    hash.inputs[0] <== secreto;

    // Comprobamos que coincide con el compromiso
    hash.out === compromiso;
}

component main {public [compromiso]} = Autenticacion();
