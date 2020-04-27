namespace Quantum.Entanglement
{
    open Microsoft.Quantum.Intrinsic;
    open Microsoft.Quantum.Canon;

    operation Entanglement():(Result,Result){
        mutable qubitOneState = Zero;
        mutable qubitTwoState = Zero;
        
        using ((qubitOne, qubitTwo) = (Qubit(),Qubit())){
            H(qubitOne); //Compuerta de Hadamard
            CNOT(qubitOne,qubitTwo); //CNOT, depende de Q1 que Q2 cambie de estado
            //Controlled not, ahora estan entrelazados y en superposicion
            // El segundo qubit inicialmente esta en cero, si el primer
            // qubit devide colapsar a 1, el segundo qbit por la compuerta CNOT 
            //colapsara a 1
            
            set qubitOneState = M(qubitOne);
            set qubitTwoState = M(qubitTwo);

            Reset(qubitOne);
            Reset(qubitTwo);

        }

        return (qubitOneState, qubitTwoState);

    }

}