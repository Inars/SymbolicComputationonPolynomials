(defun expansion (U V)
	(setf d (div_poly U V))
	(setf Q2 (nth 0 d))
	(setf R2 (nth 1 d))
	(if (eq (reduc_poly R2) '())
		(if (eq (reduc_poly Q2) '()) 
			(return-from expansion '()) 
			(return-from expansion (append '() (list (expansion Q2 V) )))
		)
		(if (eq (reduc_poly Q2) '()) 
			(return-from expansion R2) 
			(return-from expansion (append R2 (list (expansion Q2 V)))) 
		)
	)
)
