#include<stddef.h>

int main() {
    int a[] = {1, 2, 3, 4, 5};
    int b[] = {10, 20, 30, 40, 50};
    int n = 5;
    int result[5];

    int res = addv(a, b, result, n);
    return 0;
}

int addv (int *in1 , int *in2 , int *out , int n)
{
    if ( in1 == NULL )
        return -1;
    if ( in2 == NULL )
        return -1;
    if ( out == NULL )
        return -1;
    if ( n <= 0 )
        return n;

    for ( int i = 0 ; i < n ; i ++) {
        out [i] = in1[i] + in2[i];
    }

    return n;
}