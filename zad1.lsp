;zad1
(defun zadanie-1 (a b c d) (+ a (/(* b c) d)))

;zad2
(defun run()
(format t "==============Zadania lab 1 ===============~%") 
(format t "==============1.Zad1 ===============~%") 
(format t "==============2.Zad2 ===============~%") 
(format t "==============3.Zad3 ===============~%") 
(format t "==============4.Zad4 ===============~%") 
(format t "==============5.Zad5 ===============~%") 
(format t "==============6.Zad6 ===============~%") 
(format t "==============7.Zad7 ===============~%") 
(format t "==============8.Zad8 ===============~%") 
(format t "==============0. Exit ===============~%") 
(format t "============== Twój wybór: ") 
(setq wybor (read))
(cond



    ((= wybor 1)
     (format t "Zadanie 1 - Obliczenia~%")
     (format t "Podaj a:") (setq a (read))
     (format t "Podaj b:") 
     (setq b (read))
     (format t "Podaj c:") 
     (setq c (read))
     (format t "Podaj d:") 
     (setq d (read))
     (setq wynik (zadanie-1 a b c d))
	 (format t "Wynik działania: ~a~%" wynik)
	 );koniec
     ((= wybor 2)
     )
    ((= wybor 3)
     )
	 ((= wybor 4)
     )
	 ((= wybor 5)
     )
	 ((= wybor 6)
     )
	 ((= wybor 7)
     )
	 ((= wybor 8)
     )
    ((= wybor 0)
     (format t "Exiting...~%")
	 )
    (t
     (format t "Invalid choice. Please try again.~%")
     (run))
	 
	 
	 
	 );koniec cond
	 
	 );koniec fun