:- module(bc_manipulacoes, [
    exclui_pokemons_da_lista/1,
    exclui_pokemons_fora_da_lista/1]).
:- use_module([define_pokemons]).

:-style_check(-discontiguous).
:-style_check(-singleton).


exclui_pokemons_fora_da_lista(ListaDePokemons) :-
    findall(Pokemons, pokemon(Pokemon, _, _, _, _, _, _), TodosPokemons),
    remove_out(TodosPokemons, ListaDePokemons).

remove_out([H|T], Lista) :- 
    member(H, Lista),
    remove_out(T, Lista).

remove_out([H|T], Lista) :- 
    retract(pokemon(H, _, _, _, _, _, _)),
    remove_out(T, Lista).

remove_out([], Lista) :- !.

exclui_pokemons_da_lista(ListaDePokemons) :-
    findall(Pokemon, pokemon(Pokemon, _, _, _, _, _, _), TodosPokemons),
    remove_in(TodosPokemons, ListaDePokemons).

remove_in(All, [H|T]) :- (
    member(H, All) -> 
        retract(pokemon(H, _, _, _, _, _, _)) , remove_in(All, T) ;
        remove_in(All, T)
).
remove_in(All, []) :- !.





