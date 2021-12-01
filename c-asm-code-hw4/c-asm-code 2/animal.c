#include <stdlib.h>
#include "animal.h"

/// Describing a generalized animal.

int n_special_for_type[3] = {3,2,3}; // length of different codes

/// Random animal generation
animal_st ani_random_animal(void)
{
    animal_st animal;
    /// Name:
    const char charset[] = "abcdefghijklmnopqrstuvwxyz";
    int name_len = rand() %(MAX_ANIMAL_NAME_LEN - 1) + 1;
    int i_n=0;
    for ( ; i_n < name_len; i_n++){
        int key = rand() % (int) (sizeof charset - 1);
        animal.name[i_n] = charset[key];
    }
    animal.name[i_n] = '\0';
    /// Weigth:
    animal.weight = rand() % 100000 + 1;
    /// Type (fish, beast, bird):
    animal.type = (animal_type_t) (rand() % N_ANIMAL_TYPES);
    /// Attribute
    animal.special = rand() % n_special_for_type[(int)(animal.type)];    

    return animal;
}

/// Processing an animal and writting to file.
int print_animal(FILE *fp, animal_st animal){

    char type_name[80];
    char special_name[80];

    if (animal.type == FISH){
        sprintf(type_name, "Fish");
        if (animal.special == 0)
        {
            sprintf(special_name, "RIVER");
        }
        else if (animal.special == 1)
        {
            sprintf(special_name, "SEA");
        }
        else if (animal.special == 2)
        {
            sprintf(special_name, "LAKE");
        }
        else 
        {
            return 2; // Error i do not know such place
        }
    }
    else if( animal.type == BIRD ) {
        sprintf(type_name, "Bird");
        if (animal.special == 0) 
        {
            sprintf(special_name, "this bird stays for the winter");
        }
        else if (animal.special == 1) 
        {
            sprintf(special_name, "it is a migratory bird");
        }
        else
        {
            return 2; // Error i do not know such migration
        }
    }
    else if (animal.type == BEAST)
    {
        sprintf(type_name, "Beast");
        if (animal.special == 0)
        {
            sprintf(special_name, "PREDATOR");
        }
        else if (animal.special == 1)
        {
            sprintf(special_name, "HERBIVORE");
        }
        else if (animal.special == 2)
        {
            sprintf(special_name, "INSECTIVORES");
        }
        else
        {
            return 2; // Error i do not know such type of beast
        }
    }
    else
    {
        return 1; // error I do not know such animal type
    }
    /// Writting form:
    fprintf(fp, "It's %s: name - %s, weight - %d, attribute - %s.\n", type_name, animal.name, animal.weight, special_name);
    return 0;
}
