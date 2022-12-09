;; KGCreator main program
;; Compyright 2021-2022 Mark Watson All Rights Reserved.
;; License: Apache 2

(in-package #:kgcreator-cl)

(defun get-files-and-meta (fpath)
  (let ((data (directory (concatenate 'string fpath "/" "*.txt")))
	      (meta (directory (concatenate 'string fpath "/" "*.meta"))))
    (if (not (equal (length data) (length meta)))
	(let ()
	  (princ "Error: must be matching *.meta files for each *.txt file")
	  (terpri)
	  '())
	(let ((ret '()))
	  (dotimes (i (length data))
	    (setq ret (cons (list (nth i data) (nth i meta)) ret)))
	  ret))))


(defun kgcreator (&optional (input-dir "test_data"))
	(rdf-from-files "out.rdf" (get-files-and-meta input-dir))
	(cypher-from-files "out.cypher" (get-files-and-meta input-dir)))

;; (kgcreator-cl:kgcreator)