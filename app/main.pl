:- use_module(menu).
:- use_module(define_pokemons).
:- use_module(perguntas).

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
    sleep(3),
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
   ask(Question).
   % TODO!
   % verificar final -> uma função para verificar o que resta na base, pode ser feita nesse arquivo mesmo
   %                 -> caso tenha nada, significa que não conseguiu adivinhar
   %                 -> caso tenha 1,  é hora de chutar
   %                 -> talvez seja preciso chutar mais de uma vez no caso das perguntas terem acabado (hitmonlee e hitmonchan)
   %                 -> sendo outro caso, volta pro começo do flow

