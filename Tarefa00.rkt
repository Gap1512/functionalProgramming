#lang racket

(define (soma2 lista)
  (define (soma-aux lista tot)
    (if (empty? lista)
        tot
        (soma-aux (cdr lista) (+ tot (car lista)))))
  (soma-aux lista 0))

(define (substitui a b lista)
  (define (subs-aux listb)
    (if (empty? listb)
        listb
        (if ( = (car listb) a)
            (cons b (subs-aux (cdr listb)))
            (cons (car listb) (subs-aux (cdr listb))))))
  (subs-aux lista))