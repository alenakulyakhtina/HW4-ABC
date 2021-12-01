
animal.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <ani_generate_code>:
    //""" Насекомоядное """
    INSECTIVORES = 2
};

float ani_generate_code(animal_st animal)
{
   0:	f3 0f 1e fa          	endbr64 
    //complete this code   
    return animal.weight;
}
   4:	f3 0f 10 44 24 3c    	movss  0x3c(%rsp),%xmm0
   a:	c3                   	retq   

000000000000000b <ani_random_animal>:
// make random name generator
// make place generator


animal_st ani_random_animal(void)
{
   b:	f3 0f 1e fa          	endbr64 
   f:	48 89 f8             	mov    %rdi,%rax
    animal.name[2] = 0;

    animal.weight = 3;
    animal.type = 0;
    animal.animal_specific = 0;
    return animal;
  12:	c6 07 76             	movb   $0x76,(%rdi)
  15:	c6 47 01 61          	movb   $0x61,0x1(%rdi)
  19:	c6 47 02 00          	movb   $0x0,0x2(%rdi)
  1d:	c7 47 34 00 00 40 40 	movl   $0x40400000,0x34(%rdi)
  24:	c7 47 38 00 00 00 00 	movl   $0x0,0x38(%rdi)
  2b:	c7 47 3c 00 00 00 00 	movl   $0x0,0x3c(%rdi)
}
  32:	c3                   	retq   
