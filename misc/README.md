# Miscellaneous test files for chemfiles


- `big-endian.dat` and `little-endian.dat` are simple test for the binary files
  abstraction, they were generated with this script:

```py
import struct

for name, endian in [("big", ">"), ("little", "<")]:
    with open(f"{name}-endian.dat", "wb") as fd:
        fd.write(b"DATA")
        fd.write(struct.pack(f"{endian}c", b"2"))
        fd.write(struct.pack(f"{endian}h", -42))
        fd.write(struct.pack(f"{endian}H", 42))
        fd.write(struct.pack(f"{endian}i", -573))
        fd.write(struct.pack(f"{endian}I", 573))
        fd.write(struct.pack(f"{endian}q", -123456))
        fd.write(struct.pack(f"{endian}Q", 123456))
        fd.write(struct.pack(f"{endian}f", 33.3))
        fd.write(struct.pack(f"{endian}d", -55.8))

        string = "hello"
        fd.write(struct.pack(f"{endian}i", len(string)))
        fd.write(string.encode("utf8"))

        numbers = list(range(10))
        fd.write(struct.pack(f"{endian}10h", *numbers))
        fd.write(struct.pack(f"{endian}10H", *numbers))
        fd.write(struct.pack(f"{endian}10i", *numbers))
        fd.write(struct.pack(f"{endian}10I", *numbers))
        fd.write(struct.pack(f"{endian}10q", *numbers))
        fd.write(struct.pack(f"{endian}10Q", *numbers))
        fd.write(struct.pack(f"{endian}10f", *numbers))
        fd.write(struct.pack(f"{endian}10d", *numbers))

```
