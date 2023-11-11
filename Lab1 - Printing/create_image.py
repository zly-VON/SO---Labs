import os
import subprocess


for i in range(1, 8):
    path = "method" + str(i)
    
    assembly = f"nasm -f bin {path}.asm -o {path}.bin"
    subprocess.run(assembly, shell=True)

    size = os.path.getsize(path + ".bin")

    small = open(path + ".bin", "rb")
    big = open(path + ".img", "wb")
    big.write(small.read())
    bytes = b'\x00' * (1474560 - size)
    big.write(bytes)
