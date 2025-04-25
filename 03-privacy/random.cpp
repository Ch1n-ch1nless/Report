module;
 
// Defining _POSIX_C_SOURCE adds functions to standard headers,
// according to the POSIX standard.
#define _POSIX_C_SOURCE 200809L
#include <stdlib.h>
 
export module A;
 
import <ctime>;
 
// Only for demonstration (bad source of randomness).
// Use C++ <random> instead.
export double weak_random()
{
    std::timespec ts;
    std::timespec_get(&ts, TIME_UTC); // from <ctime>
 
    // Provided in <stdlib.h> according to the POSIX standard.
    srand48(ts.tv_nsec);
 
    // drand48() returns a random number between 0 and 1.
    return drand48();
}