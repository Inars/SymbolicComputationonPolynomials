(defun mono_poly_mul (Q1 M2)
	(	if (= 0 (degree M2) )
		(return-from mono_poly_mul (scalarMult (nth 0 M2) Q1))
		(return-from mono_poly_mul ( mono_poly_mul (cons 0 Q1) (nthcdr 1 M2)))
	)
)
