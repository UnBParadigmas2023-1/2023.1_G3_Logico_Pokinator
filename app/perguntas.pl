:- module(perguntas, [ask/1, limpa_perguntas/1, get_better_question/1]).

:- use_module([define_pokemons]).

:-style_check(-discontiguous).
:-style_check(-singleton).

limpa_perguntas(X) :- limpa_perguntas1(X), fail.
limpa_perguntas(X).
limpa_perguntas1(X) :- retract(pergunta(_, _)).
limpa_perguntas1(X).

% Calculo de pergunta %

get_better_question(Question) :-
    get_paramms_set(A, A, _, _, _, _, ParammsSet1),
    max_relative_amount(ParammsSet1, 1, AmountList1),
    get_paramms_set(B, _, B, _, _, _, ParammsSet2),
    max_relative_amount(ParammsSet2, 2, AmountList2),
    get_paramms_set(C, _, _, C, _, _, ParammsSet3),
    max_relative_amount(ParammsSet3, 3, AmountList3),
    get_paramms_set(D, _, _, _, D, _, ParammsSet4),
    max_relative_amount(ParammsSet4, 4, AmountList4),
    get_paramms_set(E, _, _, _, _, E, ParammsSet5),
    max_relative_amount(ParammsSet5, 5, AmountList5),
    
    %write(AmountList1), nl,
    %write(AmountList2), nl,
    %write(AmountList3), nl,
    %write(AmountList4), nl,
    %write(AmountList5), nl,
   
    compare_amounts([AmountList1, AmountList2, AmountList3, AmountList4, AmountList5], Question).
    %write(Question).  

get_paramms_set(T, A, B, C, D, E, Res) :-
    setof(T, A^B^C^D^E^N^pokemon(N, A, B, C, D, E), Res).

max_relative_amount([], N, [_, _, 0]).

max_relative_amount([Head | Tail], N, Res) :-
    get_relative_amounts(N, Head, List),
    max_relative_amount(Tail, N, AuxRes),
    compare_amounts(List, AuxRes, Res).

get_relative_amounts(N, Paramm, Res) :-
    get_by_paramm(N, Paramm, List),
    length(List, Len),
    Res = [N, Paramm, Len].

compare_amounts([], [_, _, 0]).

compare_amounts([Head | Tail], Res) :-
    compare_amounts(Tail, AuxRes),
    compare_amounts(Head, AuxRes, Res).    

compare_amounts([N1, P1, Len1], [N2, P2, Len2], [Nr, Pr, Lenr]) :-
    (Len1 >= Len2 ->
        Lenr = Len1, Pr = P1, Nr = N1
    ;
        Lenr = Len2, Pr = P2, Nr = N2
    ).

% Tratamento de Perguntas

ask([N, Paramm, _]) :-
    write_question(N, Paramm), nl, nl,
    write(" [s. ou n.] "),
    read(Ans).
    % TODO!
    % tratar a resposta -> remover o case da resposta
    %                   -> chamar a tela de erro para entradas invalidas e voltar pra pergunta
    % atualizar a base  -> devem ser removidos todos os pokemons englobados na negativa da resposta
    %                   -> atualização deve ser implementada em outro arquivo
    % melhorar as perguntas sobre o formato do pokemon

% ---- Evolução ---- %
write_question(1, evo3) :-
    write(" Seu Pokémon tem 3 evoluções? ").

write_question(1, evo2) :-
    write(" Seu Pokémon tem 2 evoluções? ").

write_question(1, evo1) :-
    write(" Seu Pokémon tem 1 evolução apenas? ").

write_question(1, evo0) :-
    write(" Seu Pokémon tem alguma evolução? ").

% ---- Tipo 1 ---- %
write_question(2, Type) :-
    write(" O primeiro tipo do seu Pokémon é "),
    write(Type),
    write("?").

% ---- Tipo 2 ---- %
write_question(3, n) :-
    write(" O seu Pokémon possui um segundo tipo? ").

write_question(3, Type) :-
    write(" O segundo tipo do seu Pokémon é "),
    write(Type),
    write("?").

% ---- Formato ---- %
write_question(4, quadrupede) :-
    write(" O formato do seu Pokémon é Quadrúpede? ").

write_question(4, bipede-com-cauda) :-
    write(" O formato do seu Pokémon é um Bípede com cauda? ").

write_question(4, insectoide) :-
    write(" O formato do seu Pokémon é um Insectoide (lembra um artrópode)? ").

write_question(4, serpentino) :-
    write(" O formato do seu Pokémon é um Serpentino (formato cilíndrico)? ").

write_question(4, quatro-asas) :-
    write(" O formato do seu Pokémon possui dois ou mais pares de asas? ").

write_question(4, duas-asas) :-
    write(" O formato do seu Pokémon possui somente um par de asas? ").

write_question(4, cabeca-e-pernas) :-
    write(" O formato do seu Pokémon possui somente uma ou mais cabeças acomapanhadas de um par de pernas? ").

write_question(4, bipede-sem-cauda) :-
    write(" O formato do seu Pokémon é um Bípede sem cauda? ").

write_question(4, multiplos-corpos) :-
    write(" O formato do seu Pokémon possui somente várias cabeças? ").

write_question(4, barbatanas) :-
    write(" O formato do seu Pokémon possui Barbatanas? ").

write_question(4, tentaculos) :-
    write(" O formato do seu Pokémon possui vários tentáculos? ").

write_question(4, cabeca-e-bracos) :-
    write(" O formato do seu Pokémon possui somente uma cabeça e um par de braços? ").

write_question(4, cabeca) :-
    write(" O formato do seu Pokémon possui somente uma cabeça? ").

% ---- Cor ---- %
write_question(5, Color) :-
    write(" A cor predominante do seu Pokémon é um tom da cor "),
    write(Color),
    write("?").

