
import qsharp
from random import randint
from Quantum.Teleportation import Teleportation

equals = 0
for _ in range(10000):
    mensaje_enviado = (randint(0, 1) == 0)
    mensaje_recibido = Teleportation.simulate(sentMessage=mensaje_enviado)
    if mensaje_recibido == mensaje_enviado:
        equals += 1


print(equals / 10000)  # El resultado de la teleportacion siempre es el mismo
