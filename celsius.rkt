;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-abbr-reader.ss" "lang")((modname celsius) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
;THIS IS THE COONVERTER
;this is thre converter
;CHECK EXPECTS
(check-expect (convertFC (cons 32 (cons 212 empty))) (cons 0 (cons 100 empty)))
(define (convertFC l)
  (cond 
    [(empty? l) empty]
    [else (cons (/ (- (first l) 32) 1.8) (convertFC (rest l)))]))
;LOOK PROCEDURE