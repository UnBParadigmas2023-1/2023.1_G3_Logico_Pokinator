:- module(define_pokemons, [pokemon/9, limpa_pokemons/1]).
:- dynamic pokemon/9.

:-style_check(-discontiguous).
:-style_check(-singleton).

limpa_pokemons(X) :- limpa_pokemons1(X), fail.
limpa_pokemons(X).
limpa_pokemons1(X) :- retract(pokemon(_, _, _, _, _, _, _, _, _)).
limpa_pokemons1(X).

% --------- BASE DE CONHECIMENTO ---------

%% Pokemons ( nome, evolucao, bipede, pernas, voa, tipo1, tipo2, formato, cor)
pokemon('Bulbasaur', 2, n, s, n, grama, veneno, quadrupede, verde).
pokemon('Ivysaur', 1, n, s, n, grama, veneno, quadrupede, verde).
pokemon('Venusaur', 0, n, s, n, grama, veneno, quadrupede, verde).
pokemon('Charmander', 2, s, s, n, fogo, , bipede-com-cauda, vermelho).
pokemon('Charmeleon', 1, s, s, n, fogo, , bipede-com-cauda, vermelho).
pokemon('Charizard', 0, s, n, s, fogo, voador, bipede-com-cauda, vermelho).
pokemon('Squirtle', 2, s, s, n, agua, , bipede-com-cauda, azul).
pokemon('Watortle', 1, s, s, n, agua, , bipede-com-cauda, azul).
pokemon('Blastoise', 0, s, s, n, agua, , bipede-com-cauda, azul).
pokemon('Caterpie', 2, n, s, n, inseto, , insectoide, verde).
pokemon('Metapod', 1, n, n, n, inseto, , serpentino, verde).
pokemon('Butterfree', 0, s, s, s, inseto, voador, quatro-asas, roxo).
pokemon('Weedle', 2, n, s, n, inseto, veneno, insectoide, marrom).
pokemon('Kakuna', 1, n, n, n, inseto, veneno, serpentino, amarelo).
pokemon('Beedril', 0, s, s, s, inseto, veneno, quatro-asas, amarelo).
pokemon('Pidgey', 2, s, s, s, normal, voador, duas-asas, marrom).
pokemon('Pidgeotto', s, s, s, normal, voador, duas-asas, marrom).
pokemon('Pidgeot', 0, s, s, s, normal, voador, duas-asas, marrom).
pokemon('Ratatta', 1, n, s, n, normal, , quadrupede, roxo).
pokemon('Raticate', 0, n, s, n, normal, , quadrupede, marrom).
pokemon('Spearow', 1, s, s, s, normal, voador, duas-asas, marrom).
pokemon('Fearow', 0, s, s, s, normal, voador, duas-asas, marrom).
pokemon('Ekans', 1, n, n, n, veneno, , serpentino, roxo).
pokemon('Arbok', 0, n, n, n, veneno, , serpentino, roxo).
pokemon('Pikachu', 1, n, s, n, eletrico, , quadrupede, amarelo).
pokemon('Raichu', 0, s, s, n, eletrico, ,bipede-com-cauda, amarelo).
pokemon('Sandshrew', 1, s, s, n, solo, , bipede-com-cauda, amarelo).
pokemon('Sandslash', 0, s, s, n, solo, , bipede-com-cauda, amarelo).
pokemon('Nidoran F', 2, n, s, n, veneno, , quadrupede, azul).
pokemon('Nidorina', 1, n, s, n, veneno, , quadrupede, azul).
pokemon('Nidoqueen', 0, s, s, n, veneno, solo, bipede-com-cauda, azul).
pokemon('Nidoran M', 2, n, s, n, veneno, , quadrupede, roxo).
pokemon('Nidorino', 1, n, s, n, veneno, , quadrupede, roxo).
pokemon('Nidoking', 0, s, s, n, veneno, solo, bipede-com-cauda, roxo).
pokemon('Clefairy', 1, s, s, n, fada, , bipede-com-cauda, rosa).
pokemon('Clefable', 0, s, s, n, fada, , bipede-com-cauda, rosa).
pokemon('Vulpix', 1, n, s, n, fogo, , quadrupede, marrom).
pokemon('Ninetales', 0, n, s, n, fogo, , quadrupede, amarelo).
pokemon('Jigglypuff', 1, s, s, n, normal, fada, bipede-sem-cauda, rosa).
pokemon('Wigglytuff', 0, s, s, n, normal, fada, bipede-sem-cauda, rosa).
pokemon('Zubat', 1, n, n, s, veneno, voador, duas-asas, roxo).
pokemon('Golbat', 0, s, s, s, veneno, voador, duas-asas, roxo).
pokemon('Oddish', 2, s, s, n, grama, veneno, cabeca-e-pernas, azul).
pokemon('Gloom', 1, s, s, n, grama, veneno, bipede-sem-cauda, azul).
pokemon('Vileplume', 0, s, s, n, grama, veneno, bipede-sem-cauda, vermelho).
pokemon('Paras', 1, n, s, n, inseto, grama, insectoide, vermelho).
pokemon('Parasect', 0, n, s, n, inseto, grama, insectoide, vermelho).
pokemon('Venonat', 1, s, s, n, inseto, veneno, bipede-sem-cauda, roxo).
pokemon('Venomoth', 0, n, s, s, inseto, veneno, quatro-asas, roxo).
pokemon('Diglett', 1, n, n, n, solo, , cabeca-e-base, marrom).
pokemon('Dugtrio', 0, n, n, n, solo, , multiplos-corpos, marrom).
pokemon('Meowth', 1, n, s, n, normal, , quadrupede, amarelo).
pokemon('Persian', 0, n, s, n, normal, , quadrupede, amarelo).
pokemon('Psyduck', 1, s, s, n, agua, , bipede-com-cauda, amarelo).
pokemon('Golduck', 0, s, s, n, agua, , bipede-com-cauda, azul).
pokemon('Mankey', 1, s, s, n, lutador, , bipede-com-cauda, marrom).
pokemon('Primeape', 0, s, s, n, lutador, , bipede-com-cauda, marrom).
pokemon('Growlithe', 1, n, s, n, fogo, , quadrupede, vermelho).
pokemon('Arcanine', 0, n, s, n, fogo, , quadrupede, vermelho).
pokemon('Poliwag', 2, s, s, n, agua, , cabeca-e-pernas, azul).
pokemon('Poliwhirl', 1, s, s, n, agua, , bipede-sem-cauda, azul).
pokemon('Poliwrath', 0, s, s, n, agua, lutador, bipede-sem-cauda, azul).
pokemon('Abra', 2, s, s, s, psiquico, , bipede-com-cauda, amarelo).
pokemon('Kadabra', 1, s, s, s, psiquico, , bipede-com-cauda, amarelo).
pokemon('Alakazan', 0, s, s, s, psiquico, , bipede-sem-cauda, amarelo).
pokemon('Machop', 2, s, s, n, lutador, , bipede-com-cauda, cinza).
pokemon('Machoke', 1, s, s, n, lutador, , bipede-sem-cauda, cinza).
pokemon('Machamp', 0, s, s, n, lutador, , bipede-sem-cauda, cinza).
pokemon('Bellsprout', 2, s, s, n, grama, veneno, bipede-sem-cauda, verde).
pokemon('Weepinbell', 1, n, n, s, grama, veneno, cabeca-e-base, verde).
pokemon('Victreebell', 0, n, n, s, grama, veneno, cabeca-e-base, verde).
pokemon('Tentacool', 1, n, s, n, agua, veneno, tentaculos, azul).
pokemon('Tentacruel', 0, n, s, n, agua, veneno, tentaculos, azul).
pokemon('Geodude', 2, n, n, s, pedra, solo, cabeca-e-bracos, marrom).
pokemon('Graveler', 1, s, s, n, pedra, solo, bipede-sem-cauda, marrom).
pokemon('Golem', 0, s, s, n, pedra, solo, bipede-sem-cauda, marrom).
pokemon('Ponyta', 1, n, s, n, fogo, , quadrupede, amarelo).
pokemon('Rapidash', 0, n, s, n, fogo, , quadrupede, amarelo).
pokemon('Slowpoke', 1, n, s, n, agua, psiquico, quadrupede, rosa).
pokemon('Slowbro', 0, s, s, n, agua, psiquico, bipede-com-cauda, rosa).
pokemon('Magnemite', 1, n, n, s, eletrico, aco, cabeca-e-bracos, cinza).
pokemon('Magneton', 0, n, n, s, eletrico, aco, multiplos-corpos, cinza).
pokemon('Farfetch''d', 0, s, s, s, normal, voador, duas-asas, marrom).
pokemon('Doduo', 1, s, s, n, normal, voador, cabeca-e-pernas, marrom).
pokemon('Dodrio', 0, s, s, n, normal, voador, cabeca-e-pernas, marrom).
pokemon('Seel', 1, n, n, n, agua, , barbatanas, branco).
pokemon('Dewgong', 0, n, n, n, agua, gelo, barbatanas, branco).
pokemon('Grimer', 1, n, n, n, veneno, , cabeca-e-bracos, roxo).
pokemon('Muk', 0, n, n, n, veneno, , cabeca-e-bracos, roxo).
pokemon('Shellder', 1, n, n, n, agua, , cabeca, roxo).
pokemon('Cloyster', 0, n, n, n, agua, gelo, cabeca, roxo).
pokemon('Gastly', 2, n, n, s, fantasma, veneno, roxo).
pokemon('Haunter', 1, n, n, s, fantasma, veneno, cabeca-e-bracos, roxo).
pokemon('Gengar', 0, s, s, s, fantasma, veneno, bipede-com-cauda, roxo).
pokemon('Onix', 0, n, n, n, pedra, solo, serpentino, cinza).
pokemon('Drowzee', 1, s, s, n, psiquico, , bipede-sem-cauda, amarelo).
pokemon('Hypno', 0, s, s, n, psiquico, , bipede-sem-cauda, amarelo).
pokemon('Krabby', 1, n, s, n, agua, , insectoide, vermelho).
pokemon('Kingler', 0, n, s, n, agua, , insectoide, vermelho).
pokemon('Voltorb', 1, n, n, n, eletrico, , cabeca, vermelho).
pokemon('Electrode', 0, n, n, n, eletrico, , cabeca, vermelho).
pokemon('Exeggcute', 1, n, n, n, grama, psiquico, multiplos-corpos, rosa).
pokemon('Exeggutor', 0, s, s, n, grama, psiquico, cabeca-e-pernas, amarelo).
pokemon('Cubone', 1, s, s, n, solo, , bipede-com-cauda, marrom).
pokemon('Marowak', 0, s, s, n, solo, , bipede-com-cauda, marrom).
pokemon('Hitmonlee', 0, s, s, n, lutador, , bipede-sem-cauda, marrom).
pokemon('Hitmonchan', 0, s, s, n, lutador, , bipede-sem-cauda, marrom).
pokemon('Lickitung', 0, s, s, n, normal, , bipede-com-cauda, rosa).
pokemon('Koffing', 1, n, n, s, veneno, , cabeca, roxo).
pokemon('Weezing', 0, n, n, s, veneno, , multiplos-corpos, roxo).
pokemon('Rhyhorn', 1, n, s, n, solo, pedra, quadrupede, cinza).
pokemon('Rhydon', 0, s, s, n, solo, pedra, bipede-com-cauda, cinza).
pokemon('Chansey', 0, s, s, n, normal, , bipede-com-cauda, rosa).
pokemon('Tangela', 0, s, s, n, grama, , cabeca-e-pernas, azul).
pokemon('Kangaskhan', 0, s, s, n, normal, , bipede-com-cauda, marrom).
pokemon('Horsea', 1, n, n, n, agua, , cabeca-e-base, azul).
pokemon('Seadra', 0, n, n, n, agua, , cabeca-e-base, azul).
pokemon('Goldeen', 1, n, n, n, agua, , barbatanas, vermelho).
pokemon('Seaking', 0, n, n, n, agua, , barbatanas, vermelho).
pokemon('Staryu', 1, s, s, n, agua, , cabeca-e-base, marrom).
pokemon('Starmie', 0, s, s, n, agua, psiquico, cabeca-e-base, roxo).
pokemon('Mr.Mime', 0, s, s, n, psiquico, fada, bipede-sem-cauda, rosa).
pokemon('Scyther', 0, s, s, s, inseto, voador, quatro-asas, verde).
pokemon('Jynx', 0, n, n, n, gelo, psiquico, bipede-sem-cauda, vermelho).
pokemon('Electabuzz', 0, s, s, n, eletrico, , bipede-com-cauda, amarelo).
pokemon('Magmar', 0, s, s, n, fogo, , bipede-com-cauda, vermelho).
pokemon('Pinsir', 0, s, s, n, inseto, , bipede-sem-cauda, marrom).
pokemon('Tauros' 0, n, s, n, normal, , quadrupede, marrom).
pokemon('Magikarp', 1, n, n, n, agua, , barbatanas, vermelho).
pokemon('Gyarados', 0, n, n, n, agua, voador, serpentino, azul).
pokemon('Lapras', 0, n, s, n, agua, gelo, barbatanas, azul).
pokemon('Ditto', 0, n, n, n, normal, , cabeca, roxo).
pokemon('Eevee', 3, n, s, n, normal, , quadrupede, marrom).
pokemon('Vaporeon', 0, n, s, n, agua, , quadrupede, azul).
pokemon('Jolteon', 0, n, s, n, eletrico, , quadrupede, amarelo).
pokemon('Flareon', 0, n, s, n, fogo, , quadrupede, vermelho).
pokemon('Porygon', 0, n, n, s, normal, , cabeca-e-pernas, rosa).
pokemon('Omanyte', 1, n, s, n, pedra, agua, tentaculos, azul).
pokemon('Omastar', 0, n, s, n, pedra, agua, tentaculos, azul).
pokemon('Kabuto', 1, n, s, n, pedra, agua, insectoide, marrom).
pokemon('Kabutops', 0, s, s, n, pedra, agua, bipede-com-cauda, marrom).
pokemon('Aerodactyl', 0, s, s, s, pedra, voador, duas-asas, roxo).
pokemon('Snorlax', 0, s, s, n, normal, , bipede-sem-cauda, azul).
pokemon('Articuno', 0, s, s, s, gelo, voador, duas-asas, azul).
pokemon('Zapdos', 0, s, s, s, eletrico, voador, duas-asas, amarelo).
pokemon('Moltres', 0, s, s, s, fogo, voador, duas-asas, amarelo).
pokemon('Dratini', 2, n, n, n, dragao, , serpentino, azul).
pokemon('Dragonair', 1, n, n, n, dragao, , serpentino, azul).
pokemon('Dragonite', 0, s, s, s, , dragao, voador, bipede-com-cauda, amarelo).
pokemon('Mewtwo', 0, s, s, s, psiquico, , bipede-com-cauda, roxo).
pokemon('Mew', 0, s, s, s, psiquico, , bipede-com-cauda, rosa).