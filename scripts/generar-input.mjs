
import { buildPoseidon } from "circomlibjs";
import fs from "fs";

const poseidon = await buildPoseidon();

// Secreto de prueba del usuario
const secreto = 1234n;

// Calculamos el compromiso público
const hash = poseidon([secreto]);
const compromiso = poseidon.F.toString(hash);

// Guardamos los datos para Circom
const input = {
    secreto: secreto.toString(),
    compromiso: compromiso
};

fs.writeFileSync(
    "input/input.json",
    JSON.stringify(input, null, 2)
);

console.log("Datos generados correctamente");
console.log("Compromiso público:", compromiso);
