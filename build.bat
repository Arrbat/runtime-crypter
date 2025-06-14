@echo off

echo Note that building requires x86_64-w64-mingw32-gcc compiler and supports only Windows 64-bit.

x86_64-w64-mingw32-gcc -I. -Icrypto/hashing -Icrypto/chacha20-poly1305 -DPOLY1305_16BIT main/stub.c crypto/chacha20-poly1305/chacha20poly1305.c crypto/chacha20-poly1305/chacha_merged.c crypto/chacha20-poly1305/poly1305-donna.c crypto/hashing/sha1.c crypto/hashing/sha224-256.c crypto/hashing/sha384-512.c crypto/hashing/usha.c crypto/hashing/hkdf.c crypto/hashing/hmac.c -o stub.exe -lkernel32
x86_64-w64-mingw32-gcc -I. -Icrypto/hashing -Icrypto/chacha20-poly1305 -DPOLY1305_16BIT main/builder.c crypto/chacha20-poly1305/chacha20poly1305.c crypto/chacha20-poly1305/chacha_merged.c crypto/chacha20-poly1305/poly1305-donna.c crypto/hashing/sha1.c crypto/hashing/sha224-256.c crypto/hashing/sha384-512.c crypto/hashing/usha.c crypto/hashing/hkdf.c crypto/hashing/hmac.c -o builder.exe -lkernel32

echo Building completed successfully.