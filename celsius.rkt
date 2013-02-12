;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-abbr-reader.ss" "lang")((modname celsius) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
(define (convertFC l)
  (cond 
    [(empty? l) empty]
    [else (cons (/ (- (first l) 32)(/ 5 9)) (convertFC (rest l)))]))