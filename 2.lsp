(defun text_from_file(file_)
    (let ((text (open file_)))
        (when text
            (loop for line = (read-line text nil)
		     while line do (format t "~a~%" line)
            )
        (close text) 
        )
    )
)

(text_from_file "")
