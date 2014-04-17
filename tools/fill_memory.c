#include <stdio.h>
#include <stdlib.h>

#define SIZE_MEM_CHUNK 10024 // Memory chunk size in bytes.


int main( void )
{
    puts( "Filling memory..." );
    printf( "Allocation chunk size: %d Bytes\n", SIZE_MEM_CHUNK );

    while ( malloc( SIZE_MEM_CHUNK  ) != NULL )
        ;

    puts( "No more memory to use.\n" );

    puts( "Hit [enter] to exit..." );
    while ( getchar() != '\n' )
        ;

    return EXIT_SUCCESS;
}

