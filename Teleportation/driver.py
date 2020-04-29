
import qsharp
from random import randint
from Quantum.Teleportation import Teleportation

equals = 0
ones = 0
for _ in range(10000):
    mensaje_enviado = (randint(0, 1) == 0)
    if mensaje_enviado:
        ones += 1
    mensaje_recibido = Teleportation.simulate(sentMessage=mensaje_enviado)
    if mensaje_recibido == mensaje_enviado:
        equals += 1

print(
    f"porcentaje de trues: {ones/10000} porcentaje de falses: {1 - ones/10000}")
print(equals / 10000)  # El resultado de la teleportacion siempre es el mismo
