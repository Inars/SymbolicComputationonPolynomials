(defun substraction (Q1 Q2)
	( if (eq Q1 '()) ;if Q1 is the empty list 
		( if (eq Q2 '())  ;if Q2 is also the empty list
			(return-from substraction '())  ;return an empty list
			(return-from substraction (scalarMult -1 Q2))  ;if only Q1 is empty : return -Q2
		)
		( if (eq Q2 '()) 
			(return-from substraction Q1) ;if only Q2 is empty : return Q1			
			(return-from substraction (cons (- (nth 0 Q1) (nth 0 Q2)) (substraction (nthcdr 1 Q1) (nthcdr 1 Q2))))  ; if none of them are empty
		) )
)
