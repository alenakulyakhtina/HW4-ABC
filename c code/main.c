#include <stdio.h>
#include <string.h>
#include <time.h>
#include "container.h"

/// Entry point - main function
int main(int argc, char *argv[])
{
    time_t start, end;
    start = clock();
    if (argc != 4){
        printf("Incorrect number of parameters!\n");
        return 1;
    }
    animal_st animal_list[10000];
    int num_animal = 0;

    if (!strcmp(argv[1], "-f")) {
        
        num_animal = con_read_from_file(argv[2], animal_list); //returns number of read animals
        if (num_animal < 0)
            return 1;
    }
    else if (!strcmp(argv[1], "-r")) {
        
        sscanf (argv[2],"%d",&num_animal);
        con_generate_random(animal_list, num_animal);
    }
    else {
        printf("Incorrect parameters, expected -f or -r!\n");
        return 1;
    }

    con_sort(animal_list, num_animal);
    int result = con_write_to_file(argv[3], animal_list, num_animal);

    end = clock();
    printf("Time: %f\n", (float)(end - start));
    return result;    
}
    
