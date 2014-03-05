; 1. Find the last box of a list
(define (my-last lst)
                 (let (
                       [tail (cdr lst)]
                      )
                  (if (null? tail) (car lst) (my-last tail))))
; usage
; (my-last '(1 2 3 4 5))

; 2. Find the last but one box of a list.
;* (my-but-last '(a b c d))
; (C D)
(define (my-but-last lst)
   (cond 
      [(null? (cdr lst)) '()]
      [(null? (cddr lst)) lst]
      [else (my-but-last (cdr lst))]
      ))
; 3. Find the K'th element of a list.
(define (my-list-ref lst k)
 (cond 
  [(= k 0) (car lst)]
  [else (my-list-ref (cdr lst) (- k 1))]
 ))

; 4. Find the number of elements of a list.
(define (my-length lst) 
 (if (null? lst) 0 (+ 1 (my-length (cdr lst)))))

; 5. Reverse a list.
(define (my-reverse lst)
 (cond
  [(null? lst) '()]
  [(null? (cdr lst)) lst]
  [else (append (my-reverse (cdr lst)) (list (car lst)))]
 ))

; 6. Find out whether a list is a palindrome.
(define (polindrome? lst)
 (equal? lst (reverse lst)))

; 7. Flatten a nested list structure.
(define (my-flatten lst)
 (cond
  [(null? lst) '()]
  [(pair? (car lst)) (append (my-flatten (car lst)) (my-flatten (cdr lst)))]
  [else (cons (car lst) (my-flatten (cdr lst)))]
 ))
  
