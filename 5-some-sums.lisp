(defun sum-digits (n)
  (if (zerop n)
    0
    (multiple-value-bind (q r) (floor n 10)
      (+ r (sum-digits q)))))
(let ((n (read)) (a (read)) (b (read)))
  (format t "~A~%"
          (loop for i from 1 to n
                when (and (<= a (sum-digits i)) (<= (sum-digits i) b))
                sum i)))
