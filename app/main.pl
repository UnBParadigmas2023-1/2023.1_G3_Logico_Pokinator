start:- consult('base.pl'),
    write('Seu Pokémon tem evolução?'),
    read(A),
    write('Seu Pokémon é bípede?'),
    read(B),
    write('Seu Pokémon é inicial?'),
    read(C),
    write('Seu Pokémon é lendário?'),
    read(D),
    write('Seu Pokémon tem pernas?'),
    read(E),
    write('Seu Pokémon voa?'),
    read(F),
    write('Seu Pokémon é um fóssil?'),
    read(G),
    

    findall(X, pokemon(X,A,B,C,D,E,F,G), Lista), write(Lista).

