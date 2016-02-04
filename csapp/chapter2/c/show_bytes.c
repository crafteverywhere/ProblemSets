/*************************************************************************
	> File Name: show_bytes.c
	> Author: 
	> Mail: 
	> Created Time: 2016年01月07日 星期四 15时44分08秒
 ************************************************************************/

#include<stdio.h>

typedef unsigned char *byte_pointer;

void show_bytes(byte_pointer start, int len)
{
    int i;
    for (i = 0; i < len; i++)
        printf(" %.2x", start[i]);
    printf("\n");
}

void show_int(int x)
{
    show_bytes((byte_pointer) &x, sizeof(int));
}

void show_float(float x)
{
    show_bytes((byte_pointer) &x, sizeof(float));
}

void show_pointer(viod *x)
{
    show_bytes((byte_pointer) &x, sizeof(void *));
}
