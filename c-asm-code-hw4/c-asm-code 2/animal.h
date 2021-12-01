#ifndef ANIMAL_H
#define ANIMAL_H

#include <stdio.h>

#define MAX_ANIMAL_NAME_LEN 50
#define N_ANIMAL_TYPES 3
/// Describing a generalized animal.

/// Enumerations of animals
typedef enum animal_type_t {
    FISH = 0, // fish
    BIRD = 1, // bird
    BEAST = 2 // beast
} animal_type_t;

/// 
typedef struct animal_st {
   char name[MAX_ANIMAL_NAME_LEN]; // name
   int weight; // weight
   animal_type_t type; //type
   int special; // attribute

} animal_st;
// first three letters should give oyu a hind which module the function is comming from
float ani_generate_code(animal_st animal);
animal_st ani_random_animal();
int print_animal(FILE *fp, animal_st animal);


#endif