#!/bin/sed -nf
#
# Note que estamos usando borda no script (\b), assim se
# procurarmos por sed e tiver sedsed, o resultado vai ser 0
#
# Thobias Salazar Trevisan <thobias at lcp.coppe.ufrj.br>

# se for a primeira linha zeramos o contador.
# o contador fica sempre no reserva
1 {
  x
  s/^/0/
  x
}

# se for a palavra que procuramos fizemos
# no exemplo estamos procurando pela palavra 'sed'
/\bsed\b/ {
  : c
  s/\bsed\b//
  t a
  # substituimos a palavra por nada, se ocorreu sucesso na substituição
  # pulamos pro label 'a', senão, vamos pro label 'b'
  b b
  # chegamos aqui se ocorreu sucesso na substituição. Assim pegamos o valor
  # que esta no reserva e fizemos valor + 1
  : a
  x
  # aqui comeca o algoritmo pra incrementar o numero
  # link do algoritmo para contar.
  # http://sed.sf.net/grabbag/scripts/incr_num.sed
  : p
  s/9\(_*\)$/_\1/
  t p
  s/^\(_*\)$/0\1/
  s/ \(_*\)$/0\1/
  s/8\(_*\)$/9\1/
  s/7\(_*\)$/8\1/
  s/6\(_*\)$/7\1/
  s/5\(_*\)$/6\1/
  s/4\(_*\)$/5\1/
  s/3\(_*\)$/4\1/
  s/2\(_*\)$/3\1/
  s/1\(_*\)$/2\1/
  s/0\(_*\)$/1\1/
  s/_/0/g
  # como a palavra pode aparecer mais de 1 vez na mesma linha, pulamos
  # pro label 'c' pra ver se existe mais
  x
  t c
}
: b
# se for última linha, imprime o que tem no reserva (o contador)
$ {
  x
  p
}

