#include <stdio.h>
#include <stdlib.h>

int main( void )
{
    register int counter = 0;

    puts( "Single-core process running..." );
    while ( 1 )
    {
        if ( counter < 32000 )
            ++counter;
        else
            counter = 0;
    }

    return EXIT_SUCCESS;
}

