(defvar n (read))
(defvar y (read))
(defvar ans '(-1 -1 -1))
(loop for i from 0 to n do
      (loop for j from 0 to (- n i) do
            (let ((k (- n i j)))
              (if (equal y (+ (* 10000 i) (* 5000 j) (* 1000 k)))
                (progn
                  (setq ans (list i j k))
                  (return))))))
(format t "~a ~a ~a~%" (car ans) (cadr ans) (caddr ans))
