(defun degree (list)
	( if (listp list ) 
		(- (length list) 1) 
		'NOT_A_LIST 
	)
)
