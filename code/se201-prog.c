/* * 1. Define NULL manually since we removed <stddef.h>/<stdio.h>
 * (NULL is usually ((void*)0))
 */
#define NULL ((void*)0)

// Update the arguments to accept volatile pointers
int addv(int *in1,int *in2,int *out,int n)
{
    if (in1 == NULL)
        return -1;
    if (in2 == NULL)
        return -1;
    if (out == NULL)
        return -1;
    if (n <= 0)
        return n;

    int* in1_end = in1 + sizeof(int)*n;
    do {
        *out = *in1 + *in2;
        in1++;
        in2++;
        out++;
    }
    while (in1 != in1_end);

    return n;
}

int main() {
    int n = 50;
    int a[50] = {0};
    int b[50] = {0};
    int result[50] = {0};

    addv(a, b, result, n);

    return 0;
}

