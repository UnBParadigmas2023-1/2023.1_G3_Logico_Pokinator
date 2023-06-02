:- module(define_pokemons, [pokemon/6, limpa_pokemons/1, get_by_paramm/3, get_all/1]).

:- dynamic pokemon/6.

:-style_check(-discontiguous).
:-style_check(-singleton).

limpa_pokemons(X) :- limpa_pokemons1(X), fail.
limpa_pokemons(X).
limpa_pokemons1(X) :- retract(pokemon(_, _, _, _, _)).
limpa_pokemons1(X).

get_by_paramm(1, Paramm, Response) :-
    findall(Target, pokemon(Target, Paramm, _, _, _, _), Response).

get_by_paramm(2, Paramm, Response) :-
    findall(Target, pokemon(Target, _, Paramm, _, _, _), Response).

get_by_paramm(3, Paramm, Response) :-
    findall(Target, pokemon(Target, _, _, Paramm, _, _), Response).

get_by_paramm(4, Paramm, Response) :-
    findall(Target, pokemon(Target, _, _, _, Paramm, _), Response).

get_by_paramm(5, Paramm, Response) :-
    findall(Target, pokemon(Target, _, _, _, _, Paramm), Response).

get_all(Response):-
    findall( Target, pokemon(Target, _, _, _, _, _), Response).

% --------- BASE DE CONHECIMENTO ---------

%% Pokemons ( nome, evolucao, tipo1, tipo2, formato, cor)
pokemon('Bulbasaur', evo2, grama, veneno, quadrupede, verde).
pokemon('Bulbasaur', evo2, grama, veneno, quadrupede, verde).

