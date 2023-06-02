:- module(main,[app/0]).
:- use_module([perguntas]).
:- use_module([define_pokemons]).
:- use_module([menu]).

:- style_check(-discontiguous).
:- style_check(-singleton).

:- initialization(app).

app :-
    shell('clear'),
    print_header,
    print_main_menu,
    trata_entrada.

trata_entrada :-
    write(">> "),
    read(Enter),
    trata_entrada(Enter).

trata_entrada(1) :-
    start.

trata_entrada(2) :-
    write("Até a próxima"), nl,
    halt.

trata_entrada(_) :-
    print_invalid_command,
    app.

start :-
    shell('clear'),
    print_header,
    print_instructions,
    write("Pokémom escolhido? Pressione qualquer tecla para continuar!"),
    nl,
    read(Any),
    limpa_pokemons(X),
    consult('define_pokemons.pl'),
    flow.
    
flow :-
   shell('clear'),
   print_header,
   get_better_question(Question),
   ask(Question),
   verify.

verify :-
   get_all(Res),
   length(Res, Len),
   verify(Len).

verify(1) :-
    findall(T, pokemon(T, _, _, _, _, _), P),
    write(P), nl,
    halt.

verify(2) :-
    write("O antonio vai pagar pra geral, la ele").

verify(X) :-
    flow.
    
   % TODO!
   % verificar final -> uma função para verificar o que resta na base, pode ser feita nesse arquivo mesmo
   %                 -> caso tenha nada, significa que não conseguiu adivinhar
   %                 -> caso tenha 1,  é hora de chutar
   %                 -> talvez seja preciso chutar mais de uma vez no caso das perguntas terem acabado (hitmonlee e hitmonchan)(magikarp e goldeen)
   %                 -> sendo outro caso, volta pro começo do flow

