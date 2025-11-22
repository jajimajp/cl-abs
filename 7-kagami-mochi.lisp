(defvar n (read))
(defvar d (loop repeat n collect (read)))
(format t "~a~%" (length (remove-duplicates d)))
