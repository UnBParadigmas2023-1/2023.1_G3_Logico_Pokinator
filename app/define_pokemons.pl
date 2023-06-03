:- module(define_pokemons, [pokemon/7, limpa_pokemons/1, get_by_paramm/3, get_all/1]).

:- dynamic pokemon/7.

:-style_check(-discontiguous).
:-style_check(-singleton).

limpa_pokemons(X) :- limpa_pokemons1(X), fail.
limpa_pokemons(X).
limpa_pokemons1(X) :- retract(pokemon(_, _, _, _, _, _, _)).
limpa_pokemons1(X).

get_by_paramm(1, Paramm, Response) :-
    findall(Target, pokemon(Target, Paramm, _, _, _, _, _), Response).

get_by_paramm(2, Paramm, Response) :-
    findall(Target, pokemon(Target, _, Paramm, _, _, _, _), Response).

get_by_paramm(3, Paramm, Response) :-
    findall(Target, pokemon(Target, _, _, Paramm, _, _, _), Response).

get_by_paramm(4, Paramm, Response) :-
    findall(Target, pokemon(Target, _, _, _, Paramm, _, _), Response).

get_by_paramm(5, Paramm, Response) :-
    findall(Target, pokemon(Target, _, _, _, _, Paramm, _), Response).

get_all(Response):-
    findall( Target, pokemon(Target, _, _, _, _, _, _), Response).

% --------- BASE DE CONHECIMENTO ---------

%% Pokemons ( nome, evolucao, tipo1, tipo2, formato, cor, id)
pokemon('Bulbasaur', evo2, grama, veneno, quadrupede, verde, "001").
pokemon('Ivysaur', evo1, grama, veneno, quadrupede, verde, "002").
pokemon('Venusaur', evo0, grama, veneno, quadrupede, verde, "003").
pokemon('Charmander', evo2, fogo, n, bipede-com-cauda, vermelho, "004").
pokemon('Charmeleon', evo1, fogo, n, bipede-com-cauda, vermelho, "005").
pokemon('Charizard', evo0, fogo, voador, bipede-com-cauda, vermelho, "006").
pokemon('Squirtle', evo2, agua, n, bipede-com-cauda, azul, "007").
pokemon('Watortle', evo1, agua, n, bipede-com-cauda, azul, "008").
pokemon('Blastoise', evo0, agua, n, bipede-com-cauda, azul, "009").
pokemon('Caterpie', evo2, inseto, n, insectoide, verde, "010").
pokemon('Metapod', evo1, inseto, n, serpentino, verde, "011").
pokemon('Butterfree', evo0, inseto, voador, quatro-asas, roxo, "012").
pokemon('Weedle', evo2, inseto, veneno, insectoide, marrom, "013").
pokemon('Kakuna', evo1, inseto, veneno, serpentino, amarelo, "014").
pokemon('Beedril', evo0, inseto, veneno, quatro-asas, amarelo, "015").
pokemon('Pidgey', evo2, normal, voador, duas-asas, marrom, "016").
pokemon('Pidgeotto', evo1, normal, voador, duas-asas, marrom, "017").
pokemon('Pidgeot', evo0, normal, voador, duas-asas, marrom, "018").
pokemon('Ratatta', evo1, normal, n, quadrupede, roxo, "019").
pokemon('Raticate', evo0, normal, n, quadrupede, marrom, "020").
pokemon('Spearow', evo1, normal, voador, duas-asas, marrom, "021").
pokemon('Fearow', evo0, normal, voador, duas-asas, marrom, "022").
pokemon('Ekans', evo1, veneno, n, serpentino, roxo, "023").
pokemon('Arbok', evo0, veneno, n, serpentino, roxo, "024").
pokemon('Pikachu', evo1, eletrico, n, quadrupede, amarelo, "025").
pokemon('Raichu', evo0, eletrico, n, bipede-com-cauda, amarelo, "026").
pokemon('Sandshrew', evo1, solo, n, bipede-com-cauda, amarelo, "027").
pokemon('Sandslash', evo0, solo, n, bipede-com-cauda, amarelo, "028").
pokemon('Nidoran F', evo2, veneno, n, quadrupede, azul, "029").
pokemon('Nidorina', evo1, veneno, n, quadrupede, azul, "030").
pokemon('Nidoqueen', evo0, veneno, solo, bipede-com-cauda, azul, "031").
pokemon('Nidoran M', evo2, veneno, n, quadrupede, roxo, "032").
pokemon('Nidorino', evo1, veneno, n, quadrupede, roxo, "033").
pokemon('Nidoking', evo0, veneno, solo, bipede-com-cauda, roxo, "034").
pokemon('Clefairy', evo1, fada, n, bipede-com-cauda, rosa, "035").
pokemon('Clefable', evo0, fada, n, bipede-com-cauda, rosa, "036").
pokemon('Vulpix', evo1, fogo, n, quadrupede, marrom, "037").
pokemon('Ninetales', evo0, fogo, n, quadrupede, amarelo, "038").
pokemon('Jigglypuff', evo1, normal, fada, bipede-sem-cauda, rosa, "039").
pokemon('Wigglytuff', evo0, normal, fada, bipede-sem-cauda, rosa, "040").
pokemon('Zubat', evo1, veneno, voador, duas-asas, roxo, "041").
pokemon('Golbat', evo0, veneno, voador, duas-asas, roxo, "042").
pokemon('Oddish', evo2, grama, veneno, cabeca-e-pernas, azul, "043").
pokemon('Gloom', evo1, grama, veneno, bipede-sem-cauda, azul, "044").
pokemon('Vileplume', evo0, grama, veneno, bipede-sem-cauda, vermelho, "045").
pokemon('Paras', evo1, inseto, grama, insectoide, vermelho, "046").
pokemon('Parasect', evo0, inseto, grama, insectoide, vermelho, "047").
pokemon('Venonat', evo1, inseto, veneno, bipede-sem-cauda, roxo, "048").
pokemon('Venomoth', evo0, inseto, veneno, quatro-asas, roxo, "049").
pokemon('Diglett', evo1, solo, n, cabeca-e-base, marrom, "050").
pokemon('Dugtrio', evo0, solo, n, multiplos-corpos, marrom, "051").
pokemon('Meowth', evo1, normal, n, quadrupede, amarelo, "052").
pokemon('Persian', evo0, normal, n, quadrupede, amarelo, "053").
pokemon('Psyduck', evo1, agua, n, bipede-com-cauda, amarelo, "054").
pokemon('Golduck', evo0, agua, n, bipede-com-cauda, azul, "055").
pokemon('Mankey', evo1, lutador, n, bipede-com-cauda, marrom, "056").
pokemon('Primeape', evo0, lutador, n, bipede-com-cauda, marrom, "057").
pokemon('Growlithe', evo1, fogo, n, quadrupede, vermelho, "058").
pokemon('Arcanine', evo0, fogo, n, quadrupede, vermelho, "059").
pokemon('Poliwag', evo2, agua, n, cabeca-e-pernas, azul, "060").
pokemon('Poliwhirl', evo1, agua, n, bipede-sem-cauda, azul, "061").
pokemon('Poliwrath', evo0, agua, lutador, bipede-sem-cauda, azul, "062").
pokemon('Abra', evo2, psiquico, n, bipede-com-cauda, amarelo, "063").
pokemon('Kadabra', evo1, psiquico, n, bipede-com-cauda, amarelo, "064").
pokemon('Alakazan', evo0, psiquico, n, bipede-sem-cauda, amarelo, "065").
pokemon('Machop', evo2, lutador, n, bipede-com-cauda, cinza, "066").
pokemon('Machoke', evo1, lutador, n, bipede-sem-cauda, cinza, "067").
pokemon('Machamp', evo0, lutador, n, bipede-sem-cauda, cinza, "068").
pokemon('Bellsprout', evo2, grama, veneno, bipede-sem-cauda, verde, "069").
pokemon('Weepinbell', evo1, grama, veneno, cabeca-e-base, verde, "070").
pokemon('Victreebell', evo0, grama, veneno, cabeca-e-base, verde, "071").
pokemon('Tentacool', evo1, agua, veneno, tentaculos, azul, "072").
pokemon('Tentacruel', evo0, agua, veneno, tentaculos, azul, "073").
pokemon('Geodude', evo2, pedra, solo, cabeca-e-bracos, marrom, "074").
pokemon('Graveler', evo1, pedra, solo, bipede-sem-cauda, marrom, "075").
pokemon('Golem', evo0, pedra, solo, bipede-sem-cauda, marrom, "076").
pokemon('Ponyta', evo1, fogo, n, quadrupede, amarelo, "077").
pokemon('Rapidash', evo0, fogo, n, quadrupede, amarelo, "078").
pokemon('Slowpoke', evo1, agua, psiquico, quadrupede, rosa, "079").
pokemon('Slowbro', evo0, agua, psiquico, bipede-com-cauda, rosa, "080").
pokemon('Magnemite', evo1, eletrico, aco, cabeca-e-bracos, cinza, "081").
pokemon('Magneton', evo0, eletrico, aco, multiplos-corpos, cinza, "082").
pokemon('Farfetch''d', evo0, normal, voador, duas-asas, marrom, "083").
pokemon('Doduo', evo1, normal, voador, cabeca-e-pernas, marrom, "084").
pokemon('Dodrio', evo0, normal, voador, cabeca-e-pernas, marrom, "085").
pokemon('Seel', evo1, agua, n, barbatanas, branco, "086").
pokemon('Dewgong', evo0, agua, gelo, barbatanas, branco, "087").
pokemon('Grimer', evo1, veneno, n, cabeca-e-bracos, roxo, "088").
pokemon('Muk', evo0, veneno, n, cabeca-e-bracos, roxo, "089").
pokemon('Shellder', evo1, agua, n, cabeca, roxo, "090").
pokemon('Cloyster', evo0, agua, gelo, cabeca, roxo, "091").
pokemon('Gastly', evo2, fantasma, veneno, cabeca, roxo, "092").
pokemon('Haunter', evo1, fantasma, veneno, cabeca-e-bracos, roxo, "093").
pokemon('Gengar', evo0, fantasma, veneno, bipede-com-cauda, roxo, "094").
pokemon('Onix', evo0, pedra, solo, serpentino, cinza, "095").
pokemon('Drowzee', evo1, psiquico, n, bipede-sem-cauda, amarelo, "096").
pokemon('Hypno', evo0, psiquico, n, bipede-sem-cauda, amarelo, "097").
pokemon('Krabby', evo1, agua, n, insectoide, vermelho, "098").
pokemon('Kingler', evo0, agua, n, insectoide, vermelho, "099").
pokemon('Voltorb', evo1, eletrico, n, cabeca, vermelho, "100").
pokemon('Electrode', evo0, eletrico, n, cabeca, vermelho, "101").
pokemon('Exeggcute', evo1, grama, psiquico, multiplos-corpos, rosa, "102").
pokemon('Exeggutor', evo0, grama, psiquico, cabeca-e-pernas, amarelo, "103").
pokemon('Cubone', evo1, solo, n, bipede-com-cauda, marrom, "104").
pokemon('Marowak', evo0, solo, n, bipede-com-cauda, marrom, "105").
pokemon('Hitmonlee', evo0, lutador, n, bipede-sem-cauda, marrom, "106").
pokemon('Hitmonchan', evo0, lutador, n, bipede-sem-cauda, marrom, "107").
pokemon('Lickitung', evo0, normal, n, bipede-com-cauda, rosa, "108").
pokemon('Koffing', evo1, veneno, n, cabeca, roxo, "109").
pokemon('Weezing', evo0, veneno, n, multiplos-corpos, roxo, "110").
pokemon('Rhyhorn', evo1, solo, pedra, quadrupede, cinza, "111").
pokemon('Rhydon', evo0, solo, pedra, bipede-com-cauda, cinza, "112").
pokemon('Chansey', evo0, normal, n, bipede-com-cauda, rosa, "113").
pokemon('Tangela', evo0, grama, n, cabeca-e-pernas, azul, "114").
pokemon('Kangaskhan', evo0, normal, n, bipede-com-cauda, marrom, "115").
pokemon('Horsea', evo1, agua, n, cabeca-e-base, azul, "116").
pokemon('Seadra', evo0, agua, n, cabeca-e-base, azul, "117").
pokemon('Goldeen', evo1, agua, n, barbatanas, vermelho, "118").
pokemon('Seaking', evo0, agua, n, barbatanas, vermelho, "119").
pokemon('Staryu', evo1, agua, n, cabeca-e-base, marrom, "120").
pokemon('Starmie', evo0, agua, psiquico, cabeca-e-base, roxo, "121").
pokemon('Mr.Mime', evo0, psiquico, fada, bipede-sem-cauda, rosa, "122").
pokemon('Scyther', evo0, inseto, voador, quatro-asas, verde, "123").
pokemon('Jynx', evo0, gelo, psiquico, bipede-sem-cauda, vermelho, "124").
pokemon('Electabuzz', evo0, eletrico, n, bipede-com-cauda, amarelo, "125").
pokemon('Magmar', evo0, fogo, n, bipede-com-cauda, vermelho, "126").
pokemon('Pinsir', evo0, inseto, n, bipede-sem-cauda, marrom, "127").
pokemon('Tauros', evo0, normal, n, quadrupede, marrom, "128").
pokemon('Magikarp', evo1, agua, n, barbatanas, vermelho, "129").
pokemon('Gyarados', evo0, agua, voador, serpentino, azul, "130").
pokemon('Lapras', evo0, agua, gelo, barbatanas, azul, "131").
pokemon('Ditto', evo0, normal, n, cabeca, roxo, "132").
pokemon('Eevee', evo3, normal, n, quadrupede, marrom, "133").
pokemon('Vaporeon', evo0, agua, n, quadrupede, azul, "134").
pokemon('Jolteon', evo0, eletrico, n, quadrupede, amarelo, "135").
pokemon('Flareon', evo0, fogo, n, quadrupede, vermelho, "136").
pokemon('Porygon', evo0, normal, n, cabeca-e-pernas, rosa, "137").
pokemon('Omanyte', evo1, pedra, agua, tentaculos, azul, "138").
pokemon('Omastar', evo0, pedra, agua, tentaculos, azul, "139").
pokemon('Kabuto', evo1, pedra, agua, insectoide, marrom, "140").
pokemon('Kabutops', evo0, pedra, agua, bipede-com-cauda, marrom, "141").
pokemon('Aerodactyl', evo0, pedra, voador, duas-asas, roxo, "142").
pokemon('Snorlax', evo0, normal, n, bipede-sem-cauda, azul, "143").
pokemon('Articuno', evo0, gelo, voador, duas-asas, azul, "144").
pokemon('Zapdos', evo0, eletrico, voador, duas-asas, amarelo, "145").
pokemon('Moltres', evo0, fogo, voador, duas-asas, amarelo, "146").
pokemon('Dratini', evo2, dragao, n, serpentino, azul, "147").
pokemon('Dragonair', evo1, dragao, n, serpentino, azul, "148").
pokemon('Dragonite', evo0, dragao, voador, bipede-com-cauda, amarelo, "149").
pokemon('Mewtwo', evo0, psiquico, n, bipede-com-cauda, roxo, "150").
pokemon('Mew', evo0, psiquico, n, bipede-com-cauda, rosa, "151").

