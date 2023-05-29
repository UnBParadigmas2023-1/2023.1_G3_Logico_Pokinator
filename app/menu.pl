
:- module(menu, [
    print_welcome/0,
    print_main_menu/0,
    print_instructions/0
]).

print_welcome :-
    write('      __________       __   .__               __                '), nl,
    write('      \\______   \\____ |  | _|__| ____ _____ _/  |_  ___________ '), nl,
    write('       |     ___/  _ \\|  |/ /  |/    \\\\__  \\\\   __\\/  _ \\_  __ \\'), nl,
    write('       |    |  (  <_> )    <|  |   |  \\/ __ \\|  | (  <_> )  | \\/'), nl,
    write('       |____|   \\____/|__|_ \\__|___|  (____  /__|  \\____/|__|   '), nl,
    write('                           \\/       \\/     \\/                   '), nl,
    write('                                               _,\'|'), nl,
    write('                                             .\'  /'), nl,
    write('                    __                     ,\'   \''), nl,
    write('                   \`  \`.                 .\'    \''), nl,
    write('                    \\   \`.             ,\'     \''), nl,
    write('                     \\    \`.          ,      /'), nl,
    write('                      .     \`.       /      ,'), nl,
    write('                      \'       ..__../\'     /'), nl,
    write('                       \\     ,\"\'   \'      . _.._'), nl,
    write('                        \\  ,\'             |\'    \`\"._'), nl,
    write('                         |/               ,---.._   \`.'), nl,
    write('                       ,-|           .   \'       \`-.  \\'), nl,
    write('                     ,\'  |     ,   ,\'   :           \'__\\_'), nl,
    write('                     |  /,_   /  ,U|    \'            |   .__'), nl,
    write('                     \`,\' \`.\\ \`./..-\'  __ \\           |   \`. \`.'), nl,
    write('                       \`\",_|  /     ,\"  \`.\`._       .|     \\ |'), nl,
    write('                      / /_.| j  ---\'.     \`._\`-----\`.\`     | |'), nl,
    write('                     / // ,|\`\'  \`-/\' \`.      \`\"/-+--\'    ,\'  \`.'), nl,
    write('                 _,.\`,\'| / |.\'  -,\' \\  \\       \\ \'._    /     |'), nl,
    write(' .--.      _,.-\"\'   \`| L \\ \\__ ,^.__.\\  \`.  _,--\`._,>+-\'  __,-\''), nl,
    write(':    \\   ,\'          |  | \\          /.   \`\'      \'.  \`--\'| \\'), nl,
    write('\'    | ,-.. \`\'   _,--\' ,\'  \\        \`.\\            7      |,.\\'), nl,
    write(' \`._ \'.  .\`.    .>  \`-.-    |-.\"\"---..-\\        _>\`       \`.-\''), nl,
    write('    \`.,\' | l  ,\' ,>         | \`.___,....\\._    ,--\`\`-.'), nl,
    write('   j | .\'|_|.\'  /_         /   _|         \\\`\"--+--.   \` ,..._'), nl,
    write('   |_\`-\'/  |     ,\' ,.._,.\'\"\"\"\'\\           \`--\'    \`-..\'     \`\".'), nl,
    write('     \"-\'_,+\'\\    \'^-     |      \\                    /         |'), nl,
    write('          |_/         __ \\       .                   \`.\`.._  ,\'\`.'), nl,
    write('                  _.:\'__\`\'        \`,.                  |   \`\'   |'), nl,
    write('                 \`--\`-..\`\"        /--\`               ,-\`        |'), nl,
    write('                   \`---\'---------\'                   \"\"| \`#     \'.'), nl,
    write('                                                       \`._,       \`:._'), nl,
    write('                                                         \`|   ,..  |  \'.'), nl,
    write('                                                         j   \'.  \`-+---\''), nl,
    write('                                                         |,.. |'), nl,
    write('                                                          \`. \`;'), nl,
    write('                                                            \`\''), nl.

print_main_menu :-
    write("Digite uma das opções:"), nl,
    nl,
    write("( 1 ) Começar Adivinhação"), nl,
    write("( 2 ) Instruções Para Jogar"), nl,
    write("( 3 ) Sair do Jogo"), nl,
    nl.

print_instructions :-
    nl,
    write('⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣀⣀⣀⣀⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀'), nl,
    write('⠀⠀⠀⠀⠀⠀⠀⠀⣀⣴⠾⠛⠋⠉⠉⠉⠉⢙⣿⣶⣤⡀⠀⠀⠀⠀⠀⠀⠀⠀'), nl,
    write('⠀⠀⠀⠀⠀⠀⢀⣼⠟⠁  ⠀⠀⠀⠀⣿⣿⣿⣿⣿⣦⡀⠀⠀⠀⠀⠀⠀'), nl,
    write('⠀⠀⠀⠀⠀⢠⣿⠁PIKACHU?⠙⢿⣿⣿⣿⡟⣷⡀⠀⠀⠀⠀⠀'), nl,
    write('⠀⠀⠀⠀⠀⣾⢇⣤⣶⣶⣦⣤⣀⠀⠀⠀⠀⠀⠀⠙⠛⠛⠁⢹⣇⠀⠀⠀⠀⠀'), nl,
    write('⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣷⣤SQUIRTLE?⢸⠀⠀⠀⠀⠀'), nl,
    write('⠀⠀⠀⠀⠀⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⡄⠀⠀⠀   ⢸⡏⠀⠀⠀⠀⠀'), nl,
    write('⠀⠀⠀⠀⠀⠘⣿⣿EEVEE?⣿⣿⡇⠀⠀⠀⠀⢠⡿⠁⠀⠀⠀⠀⠀'), nl,
    write('⠀⠀⠀⠀⠀⠀⠈⢿⣿⣿⣿⣿⣿⣿⣿⣿⠇⠀⠀⢀⣴⠟⠁⠀⠀⠀⠀⠀⠀'), nl,
    write('⠀⠀⠀⠀⠀⠀⣠⣤⡙⠻⢿⣿⣿⣿⣿⣿⣋⣠⣤⡶⠟⢁⣤⡄⠀⠀⠀⠀⠀⠀'), nl,
    write('⠀⠀⠀⠀⠀⠀⢿⣿⣿⣷⣤⣈⣉⠉⠛⠛⠉⣉⣠⣤⣾⣿⣿⡟⠀⠀⠀⠀⠀⠀'), nl,
    write('⠀⠀⠀⠀⣾⣦⣀⠙⠻⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⠟⢋⣠⣴⣷⠀⠀⠀⠀'), nl,
    write('⠀⠀⠀⠀⢿⣿⣿⣿⣷⣶⣤⣬⣭⣉⣉⣉⣩⣭⣥⣤⣶⣾⣿⣿⣿⡿⠀⠀⠀⠀'), nl,
    write('⠀⠀⠀⠀⠀⠙⠻⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠟⠋⠀⠀⠀⠀⠀'), nl,
    write('⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠉⠛⠛⠛⠛⠛⠛⠋⠉⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀'), nl,
    write("Primeiramente seja bem vindo ao POKINATOR! Aqui estão as instruções e sugestões para jogar!"), nl, nl,
    write("Instruções:"), nl,
    write("1. Você deve pensar em um Pokemon que faça parte da primeira geração pokemon."), nl,
    write("2. Após iniciar o jogo, responda as perguntas de acordo com o pokemon que você pensou."), nl,
    write("3. Após responder algumas perguntas o jogo irá dizer qual pokemon você pensou!"), nl, nl,
    write("Sugestões:"), nl,
    write("1. É recomendado que você consulte um pokedex com informações oficiais antes de iniciar o jogo"), nl,
    write("2. As suas respostas são muito importantes! Caso você responda algo errado a adivinhação não funcionará! (Por isso recomendamos consultar o Pokedex antes de jogar xD)"), nl,
    nl.