(defvar n (read))
(defvar a (loop repeat n collect (read)))
(setq a (sort a #'>))
(let ((alice 0) (bob 0))
  (loop for ai in a
        for i from 0
        do (if (evenp i) (incf alice ai) (incf bob ai)))
  (format t "~a~%" (- alice bob)))
