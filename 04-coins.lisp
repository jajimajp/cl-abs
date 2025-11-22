(defvar a (read))
(defvar b (read))
(defvar c (read))
(defvar x (read))
(let ((count 0))
  (loop for i upto a
        do (loop for j upto b
                 do (loop for k upto c
                          when (equal x (+ (* 500 i) (* 100 j) (* 50 k)))
                          do (incf count))))
  (format t "~A~%" count))
