#include <stdio.h>

int main()
{
	unsigned int i = 0x123456;  
	char *c;
	c = (char*)&i;
	printf("0x%x \n", *c);
	c++;
	printf("0x%x \n", *c);	
	c++;
	printf("0x%x \n", *c);	
}
