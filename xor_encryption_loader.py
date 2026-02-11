# XOR Encryption Loader

import sys

key = b'secret_key'

def xor_encrypt(data, key):
    return bytes([data[i] ^ key[i % len(key)] for i in range(len(data))])

if __name__ == '__main__':
    with open('Chestfarming-op', 'rb') as f:
        data = f.read()
    encrypted_data = xor_encrypt(data, key)
    with open('Chestfarming-op.enc', 'wb') as f:
        f.write
