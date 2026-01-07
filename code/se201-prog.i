# 0 "se201-prog.c"
# 1 "/home/bl4ck/_code/riscv-processor-design/code//"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "/usr/riscv64-linux-gnu/include/stdc-predef.h" 1 3
# 0 "<command-line>" 2
# 1 "se201-prog.c"
# 1 "/usr/lib/gcc-cross/riscv64-linux-gnu/13/include/stddef.h" 1 3 4
# 145 "/usr/lib/gcc-cross/riscv64-linux-gnu/13/include/stddef.h" 3 4

# 145 "/usr/lib/gcc-cross/riscv64-linux-gnu/13/include/stddef.h" 3 4
typedef int ptrdiff_t;
# 214 "/usr/lib/gcc-cross/riscv64-linux-gnu/13/include/stddef.h" 3 4
typedef unsigned int size_t;
# 329 "/usr/lib/gcc-cross/riscv64-linux-gnu/13/include/stddef.h" 3 4
typedef int wchar_t;
# 425 "/usr/lib/gcc-cross/riscv64-linux-gnu/13/include/stddef.h" 3 4
typedef struct {
  long long __max_align_ll __attribute__((__aligned__(__alignof__(long long))));
  long double __max_align_ld __attribute__((__aligned__(__alignof__(long double))));
# 436 "/usr/lib/gcc-cross/riscv64-linux-gnu/13/include/stddef.h" 3 4
} max_align_t;
# 2 "se201-prog.c" 2


# 3 "se201-prog.c"
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
    if ( in1 == 
# 15 "se201-prog.c" 3 4
               ((void *)0) 
# 15 "se201-prog.c"
                    )
        return -1;
    if ( in2 == 
# 17 "se201-prog.c" 3 4
               ((void *)0) 
# 17 "se201-prog.c"
                    )
        return -1;
    if ( out == 
# 19 "se201-prog.c" 3 4
               ((void *)0) 
# 19 "se201-prog.c"
                    )
        return -1;
    if ( n <= 0 )
        return n;

    for ( int i = 0 ; i < n ; i ++) {
        out [i] = in1[i] + in2[i];
    }

    return n;
}
