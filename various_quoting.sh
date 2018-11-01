#! /bin/bash

echo ''
# echo 'line1 \n still line1'
echo 'using echo to print new line'
echo -e 'line1\nline2'
echo ''

# double quote weak quoting
echo "weak quoting (double quotes)"
echo "* will be * itself inside double quotes"
echo "variables in double quotes would be interpreted"
a=98
echo "a=98"
echo 'a=$a would be ' "a=$a"
echo ''

# single quote strong quoting
echo 'strong quoting (single quotes)'
echo 'nothing will be interpreted inside single quote'
a=98
echo 'a=98'
echo 'a=$a would be a=$a'
echo ''

# ANSI C-style escape
echo "ANSI C-like string"
echo "use \$'...' when you want to escape sequences to be interpreted by the shell"
echo $'\ta leading tab'
echo $'a following newline\nsomething after the newline'
echo ''

# variable substitution
echo 'variable substitution'
echo 'use ${variable} to refer to a variable and substitute its value there'
a=34
b=57
echo 'a=34 b=57'
echo '$a$b would be ' "$a$b"
echo '${a}${b} would be ' "${a}${b}"
echo '$afixed_part would be could not be interpreted correctly because "afixed_part" is not a valid variable'
echo '${a}fixed_part would be ' "${a}fixed_part"
echo ''

# command substitution
echo 'command substitution'
echo 'use $(command) to run a command and substitute its output there'
echo '3 + 4 = $(expr 3 + 4) would be ' "3 + 4 = $(expr 3 + 4)"
echo "but !!remember to quote everything inside double quotes!!"
echo ''

# arithmetic substitution
echo 'arithmetic substitution'
echo 'use $((arithmetic operation)) to run a basic arithmetic operation and substitute its result there'
echo '3 + 4 = $((3 + 4)) would be ' "3 + 4 = $((3 + 4))"
echo ''

