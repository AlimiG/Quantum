import qsharp

from Quantum.Entanglement import Entanglement
CASES = 1000

ones = 0
equals = 0

for i in range(CASES):
    (qubitOne, qubitTwo) = Entanglement.simulate()

    if qubitOne == 1:
        ones += 1

    if qubitOne == qubitTwo:
        equals += 1

print("Resultados \n")
print(f"One: {ones}")
# En Q la paridad par en el entrelazamiento, colapsan al mismo estado
print(f"Equals: {equals/1000 * 100}")
