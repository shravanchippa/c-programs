#include <stdio.h>
#include <stdarg.h>

int add_fun(int count,...)
{
	int i, sum=0;
	va_list args;
	va_start(args, count);
	for(i=0;i<count;i++) {
		sum += va_arg(args, int);
	}
	return sum;
		
}

int main(void)
{
	int a=1,b=2,c=3,d=8,count,result;
	count = 4;
	result = add_fun(count,a,b,c,d);
	printf("result =%d\n", result);
	count = 3;
	result = add_fun(count,a,b,d);
	printf("result =%d\n", result);
}
