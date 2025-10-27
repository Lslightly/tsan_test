#include <stdatomic.h>
#include <stdio.h>
#include <string.h>

#define NOINLINE __attribute__((noinline))

NOINLINE void atomic_fn(atomic_int* pa) {
    atomic_store(pa, 1); // __tsan_atomic32_store
    int b = atomic_load(pa);
    printf("%d\n", b); // __tsan_atomic32_load
}


NOINLINE void load(int* pa) {
    printf("load, a: %d\n", *pa); // __tsan_read4
}

NOINLINE void store(int* pa) {
    *pa = 2; // __tsan_write4
}

NOINLINE void intrinsic(int* a, int* b) {
    for (int i = 0; i < 20; i++) {
        a[i] = i;
    }
    memmove(b, a, sizeof(int)*20); // converted to __tsan_memmove
}

NOINLINE void nobuiltin(char* a) {
    strcpy(a, "12345\n"); // can be converted to target specific instructions. will be converted to __tsan_memcpy
    printf("%s\n", a);
}

NOINLINE void not_captured_variables() {
    int a[20]; // captured
    for (int i = 0; i < 10; i++) {
        a[i] = i; // no tsan_write
    }
    for (int i = 0; i < 20; i++) {
        printf("%d\n", a[i]); // no tsan_read
    }
}

NOINLINE void read_before_write(int* a) {
    (*a)++; // no tsan_read
}

NOINLINE void split_read_before_write(int*a) {
    int tmp = *a; // no tsan_read
    ++(*a);
}

int main(void) {
    atomic_int aa;
    atomic_fn(&aa);
    int a = 1;
    load(&a);
    store(&a);
    int dst[20], src[20];
    intrinsic(dst, src);
    char str[20];
    nobuiltin(str);
    not_captured_variables();
    read_before_write(&a);
    split_read_before_write(&a);
    return 0;
}

