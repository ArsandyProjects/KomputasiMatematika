clc
clear

%gen
target = 'Arsndy_Pratam'
len = length(target);
genes = create_genes(len);

%fitnes
fitness= calculate_fitness(genes,len);

%populasi
population_size = 10;
population = create_population(targer,population_size)

%selection
[parent1, parent2] = selection(population)

%crossover
[child1,child2] = crossover (parent1,parent2)

%mutation
mutation_rate = 0.5;
mutant1 = mutation(chihld1,mutation_rate)
mutant2 = mutation(chihld1,mutation_rate)

%regenerasi
children = [mutant1 mutant2];
population = regeneretaion(children,population)

