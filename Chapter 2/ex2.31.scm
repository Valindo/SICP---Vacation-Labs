(define nil (quote()))


(define (square-tree tree)
  (tree-map square tree))



(define (tree-map factor tree)
  (map (lambda (sub-tree)
         (if (pair? sub-tree)
             (tree-map factor sub-tree)
             (factor sub-tree)))
       tree))

(define three (list 1 ( list 2 (list 3 (list 4 (list 5 (list 6 7)))))))

(square-tree three)

