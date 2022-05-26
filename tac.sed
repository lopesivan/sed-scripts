#!/bin/sed -f

# Usage:
#  $ seq 3 | sed.tac -n
#  3
#  2
#  1

1!G
h
$p

#1. First line will be placed into the hold space as it is.
#
#2. From the 2nd line onwards, just append the hold space content with the
#   pattern space. (Remember 2nd line is in pattern space, and 1st line is in
#   hold space).
#
#3. Now 1st and 2nd line got reversed and move this to the hold space.
#
#4. Repeat the above steps till last line.
#
#5. Once the last line is reached, just append the hold space content with the
#   pattern space and print the pattern space.
#
