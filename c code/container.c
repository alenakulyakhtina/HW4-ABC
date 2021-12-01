#include "container.h"
#include <stdio.h>
///  Describing an animal container

float function_for_sorting(animal_st animal);

/// Reading from input file.
int con_read_from_file(const char *filename, animal_st *list_of_animals){

    FILE *fp;
        
    fp = fopen(filename,"r");
    if (fp == NULL)
    {
        printf("Could not open file to read animals\n");
        return -1;
    }

    int i = 0;
    int result;
    while(!feof(fp)){
        // 0 cod 2500 0 - example
        int animal_type;
        result = fscanf(fp, "%d %s %d %d", &(animal_type),
        (list_of_animals[i].name),
        &(list_of_animals[i].weight),
        &(list_of_animals[i].special));
        if (result == 4)
        {
            list_of_animals[i].type = (animal_type_t)animal_type;
            i++;
        }
    }
    
    fclose(fp);
    
    return i; //returns number of read animals
} 

/// Generating a list of animals
int con_generate_random(animal_st *animals_list, int list_length){

    for(int i_l=0; i_l<list_length; i_l++)
    {
        animals_list[i_l] = ani_random_animal(); 
    }
    
    return 0;
}

/// Writting to output file
int con_write_to_file(const char *filename, animal_st *animals_list, int list_length){

    FILE *fp;
    fp = fopen(filename,"w");
    if (fp == NULL)
    {
        printf("Could not open file for writting\n");
        return 1;
    }

    for(int i=0; i < list_length; i++){
        print_animal(fp, animals_list[i]);
    }

    fclose(fp);
    return 0;

}

/// Function for sorting container contents
int con_sort(animal_st *animals_list, int list_length){
    int j;
    for (int i = 0; i < list_length; i++){
        animal_st animal = animals_list[i];
        j = i - 1;
        while (j >= 0 && function_for_sorting(animals_list[j]) < function_for_sorting(animal)){
            animals_list[j + 1] = animals_list[j];
            j -= 1;
        }
        animals_list[j + 1] = animal;
    }

    return 0;
}

/// Calculating the value for sorting
float function_for_sorting(animal_st animal){
    int sum = 0;
    for (int i = 0; i < MAX_ANIMAL_NAME_LEN; i++){
        if (animal.name[i] == '\0'){
            break;
        }
        else {
        sum += (int)(animal.name[i]);
        }
    }

    return ((float)sum/(animal.weight));
}
