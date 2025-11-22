(defvar n (read))
(defun opcnt (n)
  (if (evenp n) (1+ (opcnt (/ n 2))) 0))
(format t "~A~%"
        (apply #'min (loop repeat n collect (opcnt (read)))))
