(defun compress(lst &aux (current (car lst)) (len 1) tail)
  (cons
   (if (= current (cadr lst))
      (list (setq len (loop for i in lst when (/= i current) do (loop-finish) count t)) current) current)
   (if (setq tail (subseq lst len)) (compress tail)))
)


(defun decompress(lst)
  (loop for element in lst
    if (integerp element) collect element
    if (listp element) nconc (make-list (car element) 
  :initial-element (cadr element))))


(print (compress (list 1 1 1 2 2 2 3 3 3 4 5 6 7 7 7)))

(print (decompress (list (list 2 4) 9 10 (list 3 5) (list 5 7))))
