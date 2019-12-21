;;(setq x 2)
(defun insert (lst value n)
    (setq end (nthcdr n lst))
    (setq start (reverse (nthcdr (- (list-length lst) n) (reverse lst))))
    (append start value end)
    )

;;(print (insert '(4 5 7 1 3 8 7) '(0) 4))


(defun ddelete (lst n)
    (setq end (nthcdr (+ n 1) lst))
    (setq start (reverse (nthcdr (- (list-length lst) n) (reverse lst))))
    (append start end)
    )

;;(print (ddelete '(1 2 3 4 5) 1))


(defun ffind (lst n)
    (if (= (car lst) n)
        (print "Найден")
        (if (> (list-length lst) 1)
            (ffind (cdr lst) n)
            (print "Не найден")
            )
        )
    )

;;(ffind '(1 2 3) 14)
