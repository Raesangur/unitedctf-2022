#include <stdio.h>
#include <stdint.h>
#include <stdbool.h>

const uint8_t ciphertext[] = {0x43, 0x73, 0xcd, 0xc1, 0x4a, 0x44, 0xcd, 0x44, 0x43, 0x6e, 0xcd, 0x62, 0x69, 0x4d, 0x60, 0x62,
                              0xcd, 0x46, 0x43, 0x45, 0x4f, 0x69, 0xcd, 0x46, 0x48, 0x60, 0x6b, 0x4a, 0xcd, 0xc1, 0x69, 0x43,
                              0x6e, 0xcd, 0x62, 0x43, 0x62, 0xcd, 0x46, 0x6b, 0xcd, 0x44, 0xcd, 0x4e, 0x46, 0x68, 0xcd, 0x41,
                              0x41, 0x4e, 0xcd, 0x44, 0xcd, 0x4e, 0x4e, 0x68, 0x46, 0x68, 0xe6, 0x69, 0x5d, 0xd0, 0x56, 0x58,
                              0xc3, 0x5f, 0x73, 0x56, 0x57, 0x52, 0x71, 0x7f, 0x57, 0xe9, 0xc5, 0x53, 0xe8, 0x7f, 0x44, 0x45,
                              0xed, 0x4e, 0xe0, 0x4d, 0x44, 0x4f, 0x45, 0x46, 0xd0, 0xeb};

uint8_t plaintext[sizeof(ciphertext)] = {};
uint8_t secret[sizeof(ciphertext)] = {};

int main()
{
    for(int i = 0; i < sizeof(ciphertext); i++)
    {
        for (uint8_t x = 0; x < 0xFF; x++)
        {
            bool p0 = x & 0x01;
            bool p1 = x & 0x02;
            bool p2 = x & 0x04;
            bool p3 = x & 0x08;
            bool p4 = x & 0x10;
            bool p5 = x & 0x20;
            bool p6 = x & 0x40;
            bool p7 = x & 0x80;

            /*
            for (uint8_t y = 0; y < 0xFF; y++)
            */
            {
                /*
                bool s0 = y & 0x01;
                bool s1 = y & 0x02;
                bool s2 = y & 0x04;
                bool s3 = y & 0x08;
                bool s4 = y & 0x10;
                bool s5 = y & 0x20;
                bool s6 = y & 0x40;
                bool s7 = y & 0x80;
                

                bool c0 = !(s7 ^ (p1 ^ p6));
                bool c1 = !(s6 ^ (p0 ^ p7));
                bool c2 = !(s5 ^ (p3 ^ p4));
                bool c3 = !(s4 ^ (p2 ^ p5));
                bool c4 = !(s3 ^  p5);
                bool c5 = !(s2 ^  p4);
                bool c6 = !(s1 ^  p7);
                bool c7 = !(s0 ^  p6);
                */

                bool c0 = !(p1 ^ p6);
                bool c1 = !(p0 ^ p7);
                bool c2 = !(p3 ^ p4);
                bool c3 = !(p2 ^ p5);
                bool c4 = !p5;
                bool c5 = !p4;
                bool c6 = !p7;
                bool c7 = !p6;

                uint8_t c = c7 << 7 | c6 << 6 | c5 << 5 | c4 << 4 | c3 << 3 | c2 << 2 | c1 << 1 | c0;
                if (c == ciphertext[i])
                {
                    //uint8_t s = s7 << 7 | s6 << 6 | s5 << 5 | s4 << 4 | s3 << 3 | s2 << 2 | s1 << 1 | s0;
                    uint8_t p = p7 << 7 | p6 << 6 | p5 << 5 | p4 << 4 | p3 << 3 | p2 << 2 | p1 << 1 | p0;

                    //secret[i]    = s;
                    plaintext[i] = p;

                    printf("Found plaintext 0x%X with secret 0x%X\n", p, /*s*/0);

                    goto next_byte;
                }
            }
        }
        next_byte:
    }

    printf("Plaintext:\n");
    for(int i = 0; i < sizeof(plaintext); i++)
    {
        printf("0x%X ", plaintext[i]);
    }
    printf("\nSecret Key:\n");
    for(int i = 0; i < sizeof(secret); i++)
    {
        printf("0x%X ", secret[i]);
    }
}
