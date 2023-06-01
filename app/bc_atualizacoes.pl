:- module(bc_atualizacoes, [atualizar_pokemons/3]).
:- use_module([define_pokemons]).


% --- Atualizar Pokemons --- %
atualizar_pokemons(s, campo, valor):- 
    get_by_paramm(campo,valor,PokemonsListados),
    exclui_pokemons_fora_da_lista(PokemonsListados).

atualizar_pokemons(n, campo, valor):- 
        get_by_paramm(campo,valor,PokemonsListados),
        exclui_pokemons_da_lista(PokemonsListados).




exclui_pokemons_fora_da_lista(ListaDePokemons) :-
    get_all(TodosPokemons),
    remove_out(TodosPokemons, ListaDePokemons).
    


exclui_pokemons_da_lista(ListaDePokemons) :-
    get_all(TodosPokemons),
    remove_in(TodosPokemons, ListaDePokemons).


remove_out([H|T], Lista) :- 
        member(H, Lista),
        remove_out(T, Lista).

remove_out([], Lista) :- !.

remove_out([H|T], Lista) :- 
            retract(pokemon(H, _, _, _, _, _, _)),
            remove_out(T, Lista).
    

remove_in(All, [H|T]) :- (
        member(H, All) -> 
            retract(pokemon(H, _, _, _, _, _, _)) , remove_in(All, T) ;
            remove_in(All, T)
    ).
remove_in(All, []) :- !.
    