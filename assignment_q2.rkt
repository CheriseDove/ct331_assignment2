#lang racket

(provide ins_beg)
(provide ins_end)
(provide cout_top_level)
(provide count_instances)
(provide count_instances_tr)
;(provide count_instances_deep)

;A
(define (ins_beg element lst)
(let ((ll (append element (list lst))))
   
   ll)
)

;B
(define (ins_end element lst) 
(let ((ll (append lst (list element))))
  
   ll)
)

;C
(define (cout_top_level list)
   (if (null? list)
       0
       (+ 1 (cout_top_level( cdr list))))
)

;D
(define (count_instances lst)
  (cond ((null? lst) 0)                  
        ((not (pair? lst)) 1)            
        (else (+ (count_instances (car lst))     
                 (count_instances (cdr lst))))))

;E
(define (count_instances_tr lst)
  (cond ((null? lst) 0)                  
        ((not (pair? lst)) 1)            
        (else (+ (count_instances (cdr lst))    
                 (count_instances (car lst))))))
;F
;(define (count_instances_deep  element lst) ; does not work
;  (cond [(null? lst) 0]
;        [else (count_instances_deep even? list )]))

(ins_beg  '(ab) '(b c d))
(ins_beg '(a b) '(b c d))
(ins_end '(a) '(b c d))
(ins_end '(a b) '(b c d))
(cout_top_level '(a b c d))
(count_instances '(a b c (d e f)))
(count_instances_tr '(a b c (d e f)))
;(count_instances_deep '(a) '(a b c (a e f)) ) ;does not work
