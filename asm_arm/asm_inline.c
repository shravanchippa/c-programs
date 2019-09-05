//http://www.ethernut.de/en/documents/arm-inline-asm.html
//http://www.ibiblio.org/gferg/ldp/GCC-Inline-Assembly-HOWTO.html

#include <stdio.h>

/*
Making an inline asm block "volatile" as in this example, ensures that, as it optimizes, the compiler does not move any instructions above or below the block of asm statements.
*/

//inline macro asm code

#define BYTESWAP(val) \
    __asm__ __volatile__ ( \
        "eor     r3, %1, %1, ror #16\n\t" \
        "bic     r3, r3, #0x00FF0000\n\t" \
        "mov     %0, %1, ror #8\n\t" \
        "eor     %0, %0, r3, lsr #8" \
        : "=r" (val) \
        : "0"(val) \
        : "r3", "cc" \
    );


//insaid c-sub-function 
unsigned long ByteSwap(unsigned long val)
{
asm volatile (
        "eor     r3, %1, %1, ror #16\n\t"
        "bic     r3, r3, #0x00FF0000\n\t"
        "mov     %0, %1, ror #8\n\t"
        "eor     %0, %0, r3, lsr #8"
        : "=r" (val)
        : "0"(val)
        : "r3"
);
return val;
}


int main(void)
{
	unsigned long i = 0x55aa55aa, j, k;
	printf("i = %x\n", i);
	BYTESWAP(i);
	printf("i = %x\n", i);
	j = ByteSwap(i);
	printf("j = %x\n", j);

}

