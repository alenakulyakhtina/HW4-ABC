#ifndef CONTAINER_H
#define CONTAINER_H

#include "animal.h"
///  Describing an animal container

int con_read_from_file(const char *filename, animal_st *list_of_animals); //returns number of read animals
int con_generate_random(animal_st *list_of_animals, int list_length);
int con_write_to_file(const char *filename, animal_st *animals_list, int list_length);
int con_sort(animal_st *animals_list, int list_length);

#endif