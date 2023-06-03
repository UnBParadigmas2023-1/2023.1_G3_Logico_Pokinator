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
   verify(Len, Res).

verify(0, _) :-
    write("Não consegui adivinhar, você venceu!"), nl,
    halt.

verify(1, [ First |_]) :-
    print_guessed(First),
    write('(x. sair) [s. ou n.] '),
    read(Ans),
    handle_guessed(Ans, First).    

verify(2, BC) :-
    random_member(P, BC),
    print_guessed(P),
    write('(x. sair) [s. ou n.] '),
    read(Ans),
    handle_guessed(Ans, P).

verify(_, _) :-
    flow.

handle_guessed(s, Guessed) :-
    findall(T, pokemon(Guessed, _, _, _, _, _, T), Num),
    concat_strings('curl -s "https://raw.githubusercontent.com/shinya/pokemon-terminal-art/main/256color/diamond/', Num, TempLink),
    concat_strings(TempLink, ['.txt"'], Link),
    shell('clear'), nl,
    shell(Link), nl, nl,     
    write("Obrigado por jogar! Até a Próxima"), nl,
    halt.

handle_guessed(n, Guessed) :-
    retract(pokemon(Guessed, _, _, _, _, _, _)),
    verify.

handle_guessed(_, _) :-
    print_invalid_command,
    verify.

concat_strings(String1, [String2], Concatenated) :-
    concat_atom([String1, String2], Concatenated).

