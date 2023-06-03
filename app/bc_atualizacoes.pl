:- module(bc_atualizacoes, [atualizar_pokemons/3]).
:- use_module([define_pokemons]).

:-style_check(-discontiguous).
:-style_check(-singleton).

% --- Atualizar Pokemons --- %
atualizar_pokemons(s, 3, n) :-
    get_by_paramm(3, n, PokemonsListados),
    exclui_pokemons_da_lista(PokemonsListados).

atualizar_pokemons(n, 3, n) :-
    get_by_paramm(3, n, PokemonsListados),
    exclui_pokemons_fora_da_lista(PokemonsListados).

atualizar_pokemons(s, 1, evo0) :-
    get_by_paramm(1, evo0, PokemonsListados),
    exclui_pokemons_da_lista(PokemonsListados).

atualizar_pokemons(n, 1, evo0) :-
    get_by_paramm(1, evo0, PokemonsListados),
    exclui_pokemons_fora_da_lista(PokemonsListados).

atualizar_pokemons(s, Campo, Valor) :- 
    get_by_paramm(Campo, Valor, PokemonsListados),
    exclui_pokemons_fora_da_lista(PokemonsListados).

atualizar_pokemons(n, Campo, Valor) :- 
    get_by_paramm(Campo, Valor, PokemonsListados),
    exclui_pokemons_da_lista(PokemonsListados).

exclui_pokemons_fora_da_lista(ListaDePokemons) :-
    get_all(TodosPokemons),
    filter(TodosPokemons, ListaDePokemons, ListaFiltrada),
    remove(ListaFiltrada).

exclui_pokemons_da_lista(ListaDePokemons) :-
    remove(ListaDePokemons).

filter([], _, []).
filter([H|T], Lista, ListaFiltrada) :- 
    filter(T, Lista, AuxListaFiltrada),
    ( member(H, Lista) ->
        ListaFiltrada = AuxListaFiltrada
    ;
        ListaFiltrada = [H | AuxListaFiltrada]
    ).

remove([]).
remove([Head | Tail]) :-
    retract(pokemon(Head, _, _, _, _, _, _)),
    remove(Tail).

