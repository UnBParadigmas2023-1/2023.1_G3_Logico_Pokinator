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
pokemon('Ivysaur', evo1, grama, veneno, quadrupede, verde).
pokemon('Venusaur', evo0, grama, veneno, quadrupede, verde).
pokemon('Charmander', evo2, fogo, n, bipede-com-cauda, vermelho).
pokemon('Charmeleon', evo1, fogo, n, bipede-com-cauda, vermelho).
pokemon('Charizard', evo0, fogo, voador, bipede-com-cauda, vermelho).
pokemon('Squirtle', evo2, agua, n, bipede-com-cauda, azul).
pokemon('Watortle', evo1, agua, n, bipede-com-cauda, azul).
pokemon('Blastoise', evo0, agua, n, bipede-com-cauda, azul).
pokemon('Caterpie', evo2, inseto, n, insectoide, verde).
pokemon('Metapod', evo1, inseto, n, serpentino, verde).
pokemon('Butterfree', evo0, inseto, voador, quatro-asas, roxo).
pokemon('Weedle', evo2, inseto, veneno, insectoide, marrom).
pokemon('Kakuna', evo1, inseto, veneno, serpentino, amarelo).
pokemon('Beedril', evo0, inseto, veneno, quatro-asas, amarelo).
pokemon('Pidgey', evo2, normal, voador, duas-asas, marrom).
pokemon('Pidgeotto', evo1, normal, voador, duas-asas, marrom).
pokemon('Pidgeot', evo0, normal, voador, duas-asas, marrom).
pokemon('Ratatta', evo1, normal, n, quadrupede, roxo).
pokemon('Raticate', evo0, normal, n, quadrupede, marrom).
pokemon('Spearow', evo1, normal, voador, duas-asas, marrom).
pokemon('Fearow', evo0, normal, voador, duas-asas, marrom).
pokemon('Ekans', evo1, veneno, n, serpentino, roxo).
pokemon('Arbok', evo0, veneno, n, serpentino, roxo).
pokemon('Pikachu', evo1, eletrico, n, quadrupede, amarelo).
pokemon('Raichu', evo0, eletrico, n, bipede-com-cauda, amarelo).
pokemon('Sandshrew', evo1, solo, n, bipede-com-cauda, amarelo).
pokemon('Sandslash', evo0, solo, n, bipede-com-cauda, amarelo).
pokemon('Nidoran F', evo2, veneno, n, quadrupede, azul).
pokemon('Nidorina', evo1, veneno, n, quadrupede, azul).
pokemon('Nidoqueen', evo0, veneno, solo, bipede-com-cauda, azul).
pokemon('Nidoran M', evo2, veneno, n, quadrupede, roxo).
pokemon('Nidorino', evo1, veneno, n, quadrupede, roxo).
pokemon('Nidoking', evo0, veneno, solo, bipede-com-cauda, roxo).
pokemon('Clefairy', evo1, fada, n, bipede-com-cauda, rosa).
pokemon('Clefable', evo0, fada, n, bipede-com-cauda, rosa).
pokemon('Vulpix', evo1, fogo, n, quadrupede, marrom).
pokemon('Ninetales', evo0, fogo, n, quadrupede, amarelo).
pokemon('Jigglypuff', evo1, normal, fada, bipede-sem-cauda, rosa).
pokemon('Wigglytuff', evo0, normal, fada, bipede-sem-cauda, rosa).
pokemon('Zubat', evo1, veneno, voador, duas-asas, roxo).
pokemon('Golbat', evo0, veneno, voador, duas-asas, roxo).
pokemon('Oddish', evo2, grama, veneno, cabeca-e-pernas, azul).
pokemon('Gloom', evo1, grama, veneno, bipede-sem-cauda, azul).
pokemon('Vileplume', evo0, grama, veneno, bipede-sem-cauda, vermelho).
pokemon('Paras', evo1, inseto, grama, insectoide, vermelho).
pokemon('Parasect', evo0, inseto, grama, insectoide, vermelho).
pokemon('Venonat', evo1, inseto, veneno, bipede-sem-cauda, roxo).
pokemon('Venomoth', evo0, inseto, veneno, quatro-asas, roxo).
pokemon('Diglett', evo1, solo, n, cabeca-e-base, marrom).
pokemon('Dugtrio', evo0, solo, n, multiplos-corpos, marrom).
pokemon('Meowth', evo1, normal, n, quadrupede, amarelo).
pokemon('Persian', evo0, normal, n, quadrupede, amarelo).
pokemon('Psyduck', evo1, agua, n, bipede-com-cauda, amarelo).
pokemon('Golduck', evo0, agua, n, bipede-com-cauda, azul).
pokemon('Mankey', evo1, lutador, n, bipede-com-cauda, marrom).
pokemon('Primeape', evo0, lutador, n, bipede-com-cauda, marrom).
pokemon('Growlithe', evo1, fogo, n, quadrupede, vermelho).
pokemon('Arcanine', evo0, fogo, n, quadrupede, vermelho).
pokemon('Poliwag', evo2, agua, n, cabeca-e-pernas, azul).
pokemon('Poliwhirl', evo1, agua, n, bipede-sem-cauda, azul).
pokemon('Poliwrath', evo0, agua, lutador, bipede-sem-cauda, azul).
pokemon('Abra', evo2, psiquico, n, bipede-com-cauda, amarelo).
pokemon('Kadabra', evo1, psiquico, n, bipede-com-cauda, amarelo).
pokemon('Alakazan', evo0, psiquico, n, bipede-sem-cauda, amarelo).
pokemon('Machop', evo2, lutador, n, bipede-com-cauda, cinza).
pokemon('Machoke', evo1, lutador, n, bipede-sem-cauda, cinza).
pokemon('Machamp', evo0, lutador, n, bipede-sem-cauda, cinza).
pokemon('Bellsprout', evo2, grama, veneno, bipede-sem-cauda, verde).
pokemon('Weepinbell', evo1, grama, veneno, cabeca-e-base, verde).
pokemon('Victreebell', evo0, grama, veneno, cabeca-e-base, verde).
pokemon('Tentacool', evo1, agua, veneno, tentaculos, azul).
pokemon('Tentacruel', evo0, agua, veneno, tentaculos, azul).
pokemon('Geodude', evo2, pedra, solo, cabeca-e-bracos, marrom).
pokemon('Graveler', evo1, pedra, solo, bipede-sem-cauda, marrom).
pokemon('Golem', evo0, pedra, solo, bipede-sem-cauda, marrom).
pokemon('Ponyta', evo1, fogo, n, quadrupede, amarelo).
pokemon('Rapidash', evo0, fogo, n, quadrupede, amarelo).
pokemon('Slowpoke', evo1, agua, psiquico, quadrupede, rosa).
pokemon('Slowbro', evo0, agua, psiquico, bipede-com-cauda, rosa).
pokemon('Magnemite', evo1, eletrico, aco, cabeca-e-bracos, cinza).
pokemon('Magneton', evo0, eletrico, aco, multiplos-corpos, cinza).
pokemon('Farfetch''d', evo0, normal, voador, duas-asas, marrom).
pokemon('Doduo', evo1, normal, voador, cabeca-e-pernas, marrom).
pokemon('Dodrio', evo0, normal, voador, cabeca-e-pernas, marrom).
pokemon('Seel', evo1, agua, n, barbatanas, branco).
pokemon('Dewgong', evo0, agua, gelo, barbatanas, branco).
pokemon('Grimer', evo1, veneno, n, cabeca-e-bracos, roxo).
pokemon('Muk', evo0, veneno, n, cabeca-e-bracos, roxo).
pokemon('Shellder', evo1, agua, n, cabeca, roxo).
pokemon('Cloyster', evo0, agua, gelo, cabeca, roxo).
pokemon('Gastly', evo2, fantasma, veneno, cabeca, roxo).
pokemon('Haunter', evo1, fantasma, veneno, cabeca-e-bracos, roxo).
pokemon('Gengar', evo0, fantasma, veneno, bipede-com-cauda, roxo).
pokemon('Onix', evo0, pedra, solo, serpentino, cinza).
pokemon('Drowzee', evo1, psiquico, n, bipede-sem-cauda, amarelo).
pokemon('Hypno', evo0, psiquico, n, bipede-sem-cauda, amarelo).
pokemon('Krabby', evo1, agua, n, insectoide, vermelho).
pokemon('Kingler', evo0, agua, n, insectoide, vermelho).
pokemon('Voltorb', evo1, eletrico, n, cabeca, vermelho).
pokemon('Electrode', evo0, eletrico, n, cabeca, vermelho).
pokemon('Exeggcute', evo1, grama, psiquico, multiplos-corpos, rosa).
pokemon('Exeggutor', evo0, grama, psiquico, cabeca-e-pernas, amarelo).
pokemon('Cubone', evo1, solo, n, bipede-com-cauda, marrom).
pokemon('Marowak', evo0, solo, n, bipede-com-cauda, marrom).
pokemon('Hitmonlee', evo0, lutador, n, bipede-sem-cauda, marrom).
pokemon('Hitmonchan', evo0, lutador, n, bipede-sem-cauda, marrom).
pokemon('Lickitung', evo0, normal, n, bipede-com-cauda, rosa).
pokemon('Koffing', evo1, veneno, n, cabeca, roxo).
pokemon('Weezing', evo0, veneno, n, multiplos-corpos, roxo).
pokemon('Rhyhorn', evo1, solo, pedra, quadrupede, cinza).
pokemon('Rhydon', evo0, solo, pedra, bipede-com-cauda, cinza).
pokemon('Chansey', evo0, normal, n, bipede-com-cauda, rosa).
pokemon('Tangela', evo0, grama, n, cabeca-e-pernas, azul).
pokemon('Kangaskhan', evo0, normal, n, bipede-com-cauda, marrom).
pokemon('Horsea', evo1, agua, n, cabeca-e-base, azul).
pokemon('Seadra', evo0, agua, n, cabeca-e-base, azul).
pokemon('Goldeen', evo1, agua, n, barbatanas, vermelho).
pokemon('Seaking', evo0, agua, n, barbatanas, vermelho).
pokemon('Staryu', evo1, agua, n, cabeca-e-base, marrom).
pokemon('Starmie', evo0, agua, psiquico, cabeca-e-base, roxo).
pokemon('Mr.Mime', evo0, psiquico, fada, bipede-sem-cauda, rosa).
pokemon('Scyther', evo0, inseto, voador, quatro-asas, verde).
pokemon('Jynx', evo0, gelo, psiquico, bipede-sem-cauda, vermelho).
pokemon('Electabuzz', evo0, eletrico, n, bipede-com-cauda, amarelo).
pokemon('Magmar', evo0, fogo, n, bipede-com-cauda, vermelho).
pokemon('Pinsir', evo0, inseto, n, bipede-sem-cauda, marrom).
pokemon('Tauros', evo0, normal, n, quadrupede, marrom).
pokemon('Magikarp', evo1, agua, n, barbatanas, vermelho).
pokemon('Gyarados', evo0, agua, voador, serpentino, azul).
pokemon('Lapras', evo0, agua, gelo, barbatanas, azul).
pokemon('Ditto', evo0, normal, n, cabeca, roxo).
pokemon('Eevee', evo3, normal, n, quadrupede, marrom).
pokemon('Vaporeon', evo0, agua, n, quadrupede, azul).
pokemon('Jolteon', evo0, eletrico, n, quadrupede, amarelo).
pokemon('Flareon', evo0, fogo, n, quadrupede, vermelho).
pokemon('Porygon', evo0, normal, n, cabeca-e-pernas, rosa).
pokemon('Omanyte', evo1, pedra, agua, tentaculos, azul).
pokemon('Omastar', evo0, pedra, agua, tentaculos, azul).
pokemon('Kabuto', evo1, pedra, agua, insectoide, marrom).
pokemon('Kabutops', evo0, pedra, agua, bipede-com-cauda, marrom).
pokemon('Aerodactyl', evo0, pedra, voador, duas-asas, roxo).
pokemon('Snorlax', evo0, normal, n, bipede-sem-cauda, azul).
pokemon('Articuno', evo0, gelo, voador, duas-asas, azul).
pokemon('Zapdos', evo0, eletrico, voador, duas-asas, amarelo).
pokemon('Moltres', evo0, fogo, voador, duas-asas, amarelo).
pokemon('Dratini', evo2, dragao, n, serpentino, azul).
pokemon('Dragonair', evo1, dragao, n, serpentino, azul).
pokemon('Dragonite', evo0, dragao, voador, bipede-com-cauda, amarelo).
pokemon('Mewtwo', evo0, psiquico, n, bipede-com-cauda, roxo).
pokemon('Mew', evo0, psiquico, n, bipede-com-cauda, rosa).
