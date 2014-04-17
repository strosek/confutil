#include <stdio.h>
#include <stdlib.h>


#define ALLOCATION_FREQUENCY 10000 // Cicles between allocation.
#define SIZE_MEM_CHUNK 2048 // Memory allocation size in bytes.


int main( void )
{
    register int i = 0;
    register int j = 0;

    puts( "Processing and allocating memory...\n" );
    printf( "Allocation frequency: %d cycles\n", ALLOCATION_FREQUENCY );
    printf( "Allocation chunk size: %d Bytes\n", SIZE_MEM_CHUNK );

    while ( 1 )
    {
        if ( i >= 65535 )
        {
            j = 0;
        }
        
        if ( j >= ALLOCATION_FREQUENCY )
        {
            j = 0;
            if ( malloc( SIZE_MEM_CHUNK ) == NULL )
                break;
        }
        ++i;
        ++j;
    }
    puts( "No more memory to use." );

    return EXIT_SUCCESS;
}

