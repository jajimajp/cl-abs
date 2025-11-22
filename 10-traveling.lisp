(defun movablep (from to)
  (let* ((dur (- (car to) (car from)))
         (dx (abs (- (cadr to) (cadr from))))
         (dy (abs (- (caddr to) (caddr from))))
         (dist (+ dx dy)))
    (and (<= dist dur)
         (evenp (- dur dist)))))
(defvar n (read))
(defvar in (loop repeat n collect (loop repeat 3 collect (read))))
(push '(0 0 0) in) ; initial condition
(defun p (l)
  (if l
    (if (cdr l)
      (if (movablep (car l) (cadr l))
        (p (cdr l))
        nil)
      t) ; the last element
    t))
(format t "~a~%" (if (p in) "Yes" "No"))
