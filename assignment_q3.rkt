#lang racket
                         
(provide sort)
;(provide present_absent)
;(provide insert)
;(provide insert_list)
;(provide tree_sort)
;(provide Hightree_sort)

;A. Display in sorted order
(define (sort LIST)
   (if (or (null? LIST) (<= (length LIST) 1)) LIST
      (let loop ((left null) (right null)
                   (pivot (car LIST)) (rest (cdr LIST)))
            (if (null? rest)
                (append (append (sort left) (list pivot)) (sort right))
               (if (<= (car rest) pivot)
                    (loop (append left (list (car rest))) right pivot (cdr rest))
                    (loop left (append right (list (car rest))) pivot (cdr rest)))))))


;B. Return #t or #f if a given item is present or absent in a tree or not.
;(define (present_absent ITEM LIST))

;C. Insert an item correctly into a list
;(define (insert ITEM LIST))

;D. Take a list of items and insert them into a binary search tree
;(define (insert_list ITEM_LIST LIST))

;E. Implement a tree-sort algorithm.
;(define (tree_sort ITEM_LIST))

;F.High Order tree-sort.
;(define (Hightree_sort ITEM_LIST FUNC))

(sort '( 8 2 4 6))
