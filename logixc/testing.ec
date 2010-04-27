include "stdio.h"
include "wchar.h"
include "malloc.h"

include <sys/types.h>
include <sys/stat.h>

typedef str char*

structclass foo:
    a : int
    def f() > int:
        printf("hello")
        return 1
    def g(x : str)


typedef person struct:
    name : str
    age : int

filename:str = "testcparser.lx"

def fileSize(path:str) > int:
    info:struct _stat
    _stat(path, &info)
    return info.st_size

def main() > int:
    f:FILE* = fopen(filename, "r")
    if f == NULL:
        printf("Couldn't open file\n")
        exit(1)

    filesize:int = fileSize(filename)
    buffer:str = malloc(filesize + 1)
    if fread (buffer, 1, filesize, f) == (-1L):
        printf("Couldn't read file\n")
        exit(1)
        
    buffer[filesize-2] = 0

    printf(buffer)
        
    if fclose(f) != 0:
        printf("Couldn't close file\n")

def inline foobaa(a:int):
    f()
