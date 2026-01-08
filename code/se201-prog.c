/* * 1. Define NULL manually since we removed <stddef.h>/<stdio.h>
 * (NULL is usually ((void*)0))
 */
#define NULL ((void*)0)

// Update the arguments to accept volatile pointers
int addv(volatile int *in1, volatile int *in2, volatile int *out, int n)
{
    if (in1 == NULL) return -1;
    if (in2 == NULL) return -1;
    if (out == NULL) return -1;
    if (n <= 0) return n;

    for (int i = 0; i < n; i++) {
        // The compiler MUST generate lw (load word) and sw (store word) here
        out[i] = in1[i] + in2[i];
    }

    return n;
}

int main() {
    volatile int n = 50;
    volatile int a[50] = {0};
    volatile int b[50] = {0};
    volatile int result[50] = {0};

    addv(a, b, result, n);

    return 0;
}

