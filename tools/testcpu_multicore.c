#include <stdio.h>
#include <stdlib.h>
#include <time.h>

#include <omp.h>

int main( void )
{
    register int counter = 0;
    int num_threads;

    #pragma omp parallel
    num_threads = omp_get_num_threads();

    puts( "Parallel process running..." );
    printf( "Threads in team: %d\n", num_threads );
    #pragma omp parallel
    while ( 1 )
    {
        if ( counter < 65535 )
            ++counter;
        else
            counter = 0;
    }
}

