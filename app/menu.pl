
:- module(menu, [
    print_header/0,
    print_main_menu/0,
    print_instructions/0,
    print_invalid_command/0,
    print_pokemon_guessed/1
]).

print_header :-
    write('      __________       __   .__               __                '), nl,
    write('      \\______   \\____ |  | _|__| ____ _____ _/  |_  ___________ '), nl,
    write('       |     ___/  _ \\|  |/ /  |/    \\\\__  \\\\   __\\/  _ \\_  __ \\'), nl,
    write('       |    |  (  <_> )    <|  |   |  \\/ __ \\|  | (  <_> )  | \\/'), nl,
    write('       |____|   \\____/|__|_ \\__|___|  (____  /__|  \\____/|__|   '), nl,
    write('                           \\/       \\/     \\/                   '), nl.

print_main_menu :-
    write("Digite uma das opções:"), nl,
    nl,
    write("[1.] Começar"), nl,
    write("[2.] Sair do Jogo"), nl,
    nl.

print_instructions :-
    nl,
    write("    Bem vindo ao POKINATOR!"), nl,
    write("        Eu sei qual é o pokémom que não sai da sua cabeça"), nl, nl,
    write("Instruções:"), nl,
    write("1. Pense em um Pokémon da primeira geração."), nl,
    write("2. Responda as perguntas com s. (sim) ou n. (não) de acordo com o pokémon que você pensou."), nl,
    write("3. Não esqueça do . após sua resposta!"), nl,
    write("4. De acordo com as suas respostas, tentarei dizer qual pokémon você pensou!"), nl, nl,
    write("Sugestões:"), nl,
    write("1. É recomendado que você consulte um pokedex com informações oficiais."), nl,
    write("2. As suas respostas são muito importantes!"), nl,
    write("   Caso você responda algo errado a adivinhação não funcionará!"), nl,
    nl.

print_invalid_command :-
    nl,
    write('_______________________________ ________   '), nl,
    write('\\_   _____/\\______   \\______   \\\\_____  \\  '), nl,
    write(' |    __)_  |       _/|       _/ /   |   \\ '), nl,
    write(' |        \\ |    |   \\|    |   \\/    |    \\'), nl,
    write('/_______  / |____|_  /|____|_  /\\_______  /'), nl,
    write('        \\/         \\/        \\/         \\/ '), nl,
    write("Atenção: A opção digitada não foi reconhecida como um comando válido!"), nl,
    write("Por favor, digite novamente."), nl,
    sleep(3).

