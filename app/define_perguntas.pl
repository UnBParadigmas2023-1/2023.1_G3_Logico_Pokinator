:- module(define_perguntas, [
    cadastraPerguntas/0,
    pergunta/2
]).
:- dynamic pergunta/2.
:- use_module([define_pokemons]).

cadastraPerguntas :- 
    findall(Pokemon, pokemon(Pokemon, _, _, _, _, _), TodosPokemons),
    encapsularCadastroDePerguntas(TodosPokemons), !.

encapsularCadastroDePerguntas([H|T]) :-
    pokemon(H, Evolucao, Tipo1, Tipo2, Formato, Cor),
    assert(pergunta(H, Evolucao)),
    assert(pergunta(H, Tipo1)),
    assert(pergunta(H, Tipo2)),
    assert(pergunta(H, Formato)),
    assert(pergunta(H, Cor)),
    encapsularCadastroDePerguntas(T).
encapsularCadastroDePerguntas([]) :- !.