




namespace Quantum.Teleportation 
{

    open Microsoft.Quantum.Intrinsic;
    open Microsoft.Quantum.Canon;

    operation Teleportation(sentMessage: Bool) : Bool {
        
        mutable receivedMessage = false;
        using (register = Qubit[3]) {
            let message = register[0];
            
            if (sentMessage) {
                X(message);
            }

            let alice = register[1];
            let bob = register[2];

            H(alice);
            CNOT(alice, bob);

            CNOT(message, alice);
            H(message);

            let messageState = M(message);
            let aliceState = M(alice);

            if (messageState == One) {
                Z(bob);
            }

            if (aliceState == One){
                X(bob);
            }

            if (M(bob) == One) {
                set receivedMessage = true;
            }

         ResetAll(register);

        }
        return receivedMessage;
    }
}
