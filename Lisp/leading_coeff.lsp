(defun leading_coeff (list)
	(if (eq list '()) 
		(return-from leading_coeff 0) 
		(return-from leading_coeff (nth (degree list) list) )
	)
	
)
