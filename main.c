#include <stdatomic.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#define NOINLINE __attribute__((noinline))

NOINLINE void atomic_fn() {
    atomic_int a;
    atomic_store(&a, 1);
}

NOINLINE void load(int* pa) {
    printf("load, a: %d\n", *pa);
}

NOINLINE void store(int* pa) {
    *pa = 2;
}

NOINLINE void intrinsic() {
    int a[20];
    int b[20];
    for (int i = 0; i < 20; i++) {
        a[i] = i;
    }
    memmove(b, a, sizeof(int)*20);
}

NOINLINE void nobuiltin() {
    char a[20];
    strcpy(a, "12345\n");
}

NOINLINE void no_captured_by_enclosing_func() {
    int* pa = (int*)malloc(sizeof(int));
    *pa = 1;
    free(pa);
}

NOINLINE void not_read_before_write(int* a) {
    *a = 1;
    printf("read before write, a: %d\n", *a);
}

NOINLINE void read_before_write(int* a) {
    (*a)++;
}

NOINLINE void split_read_before_write(int*a) {
    int tmp = *a;
    ++(*a);
}

int main(void) {
    atomic_fn();
    int a = 1;
    load(&a);
    store(&a);
    intrinsic();
    nobuiltin();
    no_captured_by_enclosing_func();
    not_read_before_write(&a);
    read_before_write(&a);
    split_read_before_write(&a);
    return 0;
}

