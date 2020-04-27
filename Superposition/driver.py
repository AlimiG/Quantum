import qsharp

from Quantum.Superposition  import Superposition
ones = 0
for index in range(2000):
    qubit = Superposition.simulate()
    if qubit == 1:
        ones += 1

print(f"Numero de 1: {ones/2000}")
print(f"Numero de 0: {1 - ones/1000}")
