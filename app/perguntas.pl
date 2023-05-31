:- module(perguntas, [lidar_pergunta/1, limpa_perguntas/1]).
:- use_module([bc_atualizacoes]).

:-style_check(-discontiguous).
:-style_check(-singleton).

limpa_perguntas(X) :- limpa_perguntas1(X), fail.
limpa_perguntas(X).
limpa_perguntas1(X) :- retract(pergunta(_, _)).
limpa_perguntas1(X).

% ---- Evolução ---- %
%% Pokemons ( nome, evolucao, tipo1, tipo2, formato, cor)
lidar_pergunta(evo2) :-
    write("Seu Pokémon tem 2 evoluções? "),
    read(Ans),
    atualizar_evolucao(Ans, evo2).

lidar_pergunta(evo1) :-
    write("Seu Pokémon tem 1 evolução? "),
    read(Ans),
    atualizar_evolucao(Ans, evo1).

lidar_pergunta(evo0) :-
    write("Seu Pokémon tem nenhuma evolução? "),
    read(Ans),
    atualizar_evolucao(Ans, evo0).

% ---- Tipo 1 ---- %
lidar_pergunta(grama) :-
    write("O primeiro tipo do seu Pokémon é Grama? "),
    read(Ans),
    atualizar_tipo1(Ans, grama).

lidar_pergunta(fogo) :-
    write("O primeiro tipo do seu Pokémon é Fogo? "),
    read(Ans),
    atualizar_tipo1(Ans, fogo).

lidar_pergunta(agua) :-
    write("O primeiro tipo do seu Pokémon é Água? "),
    read(Ans),
    atualizar_tipo1(Ans, agua).

lidar_pergunta(inseto) :-
    write("O primeiro tipo do seu Pokémon é Inseto? "),
    read(Ans),
    atualizar_tipo1(Ans, inseto).

lidar_pergunta(normal) :-
    write("O primeiro tipo do seu Pokémon é Normal? "),
    read(Ans),
    atualizar_tipo1(Ans, normal).

lidar_pergunta(veneno) :-
    write("O primeiro tipo do seu Pokémon é Veneno? "),
    read(Ans),
    atualizar_tipo1(Ans, veneno).

lidar_pergunta(eletrico) :-
    write("O primeiro tipo do seu Pokémon é Elétrico? "),
    read(Ans),
    atualizar_tipo1(Ans, eletrico).

lidar_pergunta(solo) :-
    write("O primeiro tipo do seu Pokémon é Solo? "),
    read(Ans),
    atualizar_tipo1(Ans, solo).

lidar_pergunta(fada) :-
    write("O primeiro tipo do seu Pokémon é Fada? "),
    read(Ans),
    atualizar_tipo1(Ans, fada).

lidar_pergunta(lutador) :-
    write("O primeiro tipo do seu Pokémon é Lutador? "),
    read(Ans),
    atualizar_tipo1(Ans, lutador).

lidar_pergunta(psiquico) :-
    write("O primeiro tipo do seu Pokémon é Psíquico? "),
    read(Ans),
    atualizar_tipo1(Ans, psiquico).

lidar_pergunta(pedra) :-
    write("O primeiro tipo do seu Pokémon é Pedra? "),
    read(Ans),
    atualizar_tipo1(Ans, pedra).

lidar_pergunta(fantasma) :-
    write("O primeiro tipo do seu Pokémon é Fantasma? "),
    read(Ans),
    atualizar_tipo1(Ans, fantasma).

lidar_pergunta(gelo) :-
    write("O primeiro tipo do seu Pokémon é Gelo? "),
    read(Ans),
    atualizar_tipo1(Ans, gelo).


lidar_pergunta(dragao) :-
    write("O primeiro tipo do seu Pokémon é Dragão? "),
    read(Ans),
    atualizar_tipo1(Ans, dragao).

% ---- Tipo 2 ---- %
lidar_pergunta(n) :-
    write("O seu Pokémon possui segundo tipo? "),
    read(Ans),
    atualizar_tipo2(Ans, n).

lidar_pergunta(veneno) :-
    write("O segundo tipo do seu Pokémon é Veneno? "),
    read(Ans),
    atualizar_tipo2(Ans, veneno).

lidar_pergunta(voador) :-
    write("O segundo tipo do seu Pokémon é Voador? "),
    read(Ans),
    atualizar_tipo2(Ans, voador).

lidar_pergunta(solo) :-
    write("O segundo tipo do seu Pokémon é Solo? "),
    read(Ans),
    atualizar_tipo2(Ans, solo).

lidar_pergunta(fada) :-
    write("O segundo tipo do seu Pokémon é Fada? "),
    read(Ans),
    atualizar_tipo2(Ans, fada).

lidar_pergunta(grama) :-
    write("O segundo tipo do seu Pokémon é Grama? "),
    read(Ans),
    atualizar_tipo2(Ans, grama).

lidar_pergunta(lutador) :-
    write("O segundo tipo do seu Pokémon é Lutador? "),
    read(Ans),
    atualizar_tipo2(Ans, lutador).

lidar_pergunta(aco) :-
    write("O segundo tipo do seu Pokémon é Aço? "),
    read(Ans),
    atualizar_tipo2(Ans, aco).

lidar_pergunta(gelo) :-
    write("O segundo tipo do seu Pokémon é Gelo? "),
    read(Ans),
    atualizar_tipo2(Ans, gelo).

lidar_pergunta(psiquico) :-
    write("O segundo tipo do seu Pokémon é Psíquico? "),
    read(Ans),
    atualizar_tipo2(Ans, psiquico).

lidar_pergunta(pedra) :-
    write("O segundo tipo do seu Pokémon é Pedra? "),
    read(Ans),
    atualizar_tipo2(Ans, pedra).

% ---- Formato ---- %
lidar_pergunta(quadrupede) :-
    write("O formato do seu Pokémon é Quadrúpede? "),
    read(Ans),
    atualizar_formato(Ans, quadrupede).

lidar_pergunta(bipede-com-cauda) :-
    write("O formato do seu Pokémon é um Bípede com cauda? "),
    read(Ans),
    atualizar_formato(Ans, bipede-com-cauda).

lidar_pergunta(insectoide) :-
    write("O formato do seu Pokémon é um Insectoide (lembra um artrópode)? "),
    read(Ans),
    atualizar_formato(Ans, insectoide).

lidar_pergunta(serpentino) :-
    write("O formato do seu Pokémon é um Serpentino (formato cilíndrico)? "),
    read(Ans),
    atualizar_formato(Ans, serpentino).

lidar_pergunta(quatro-asas) :-
    write("O formato do seu Pokémon possui dois ou mais pares de asas? "),
    read(Ans),
    atualizar_formato(Ans, quatro-asas).

lidar_pergunta(duas-asas) :-
    write("O formato do seu Pokémon possui somente um par de asas? "),
    read(Ans),
    atualizar_formato(Ans, duas-asas).

lidar_pergunta(cabeca-e-pernas) :-
    write("O formato do seu Pokémon possui somente uma ou mais cabeças acomapanhadas de um par de pernas? "),
    read(Ans),
    atualizar_formato(Ans, cabeca-e-pernas).

lidar_pergunta(bipede-sem-cauda) :-
    write("O formato do seu Pokémon é um Bípede sem cauda? "),
    read(Ans),
    atualizar_formato(Ans, bipede-sem-cauda).

lidar_pergunta(multiplos-corpos) :-
    write("O formato do seu Pokémon possui somente várias cabeças? "),
    read(Ans),
    atualizar_formato(Ans, multiplos-corpos).

lidar_pergunta(barbatanas) :-
    write("O formato do seu Pokémon possui Barbatanas? "),
    read(Ans),
    atualizar_formato(Ans, barbatanas).

lidar_pergunta(tentaculos) :-
    write("O formato do seu Pokémon possui vários tentáculos? "),
    read(Ans),
    atualizar_formato(Ans, tentaculos).

lidar_pergunta(cabeca-e-bracos) :-
    write("O formato do seu Pokémon possui somente uma cabeça e um par de braços? "),
    read(Ans),
    atualizar_formato(Ans, cabeca-e-bracos).

lidar_pergunta(cabeca) :-
    write("O formato do seu Pokémon possui somente uma cabeça? "),
    read(Ans),
    atualizar_formato(Ans, cabeca).

% ---- Cor ---- %
lidar_pergunta(verde) :-
    write("A cor predominante do seu Pokémon é um tom da cor Verde? "),
    read(Ans),
    atualizar_cor(Ans, verde).

lidar_pergunta(vermelho) :-
    write("A cor predominante do seu Pokémon é um tom da cor Vermelha? "),
    read(Ans),
    atualizar_cor(Ans, vermelho).

lidar_pergunta(azul) :-
    write("A cor predominante do seu Pokémon é um tom da cor Azul? "),
    read(Ans),
    atualizar_cor(Ans, azul).

lidar_pergunta(roxo) :-
    write("A cor predominante do seu Pokémon é um tom da cor Azul? "),
    read(Ans),
    atualizar_cor(Ans, roxo).

lidar_pergunta(marrom) :-
    write("A cor predominante do seu Pokémon é um tom da cor Marrom? "),
    read(Ans),
    atualizar_cor(Ans, marrom).

lidar_pergunta(amarelo) :-
    write("A cor predominante do seu Pokémon é um tom da cor Amarelo? "),
    read(Ans),
    atualizar_cor(Ans, amarelo).

lidar_pergunta(rosa) :-
    write("A cor predominante do seu Pokémon é um tom da cor Rosa? "),
    read(Ans),
    atualizar_cor(Ans, rosa).

lidar_pergunta(cinza) :-
    write("A cor predominante do seu Pokémon é um tom da cor Cinza? "),
    read(Ans),
    atualizar_cor(Ans, cinza).