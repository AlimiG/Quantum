namespace Quantum.Superposition 
{
    open Microsoft.Quantum.Intrinsic;
    open Microsoft.Quantum.Canon;

    operation Superposition(): Result{
        mutable state = Zero; //Debo inicializarla antes de pasarla a la funcion
       // Debe inicializarse fuera del bloque para poder mutarla OJO
        using (qubit = Qubit()){ // Los quibits se inicializan en 0

            H(qubit); //Compuerta de hadamard
            set state = M(qubit); //Medimos el estado a ver en qe esta
            Reset(qubit); //Es obligatorio resetearlo
        }
        return state;
    }

}
