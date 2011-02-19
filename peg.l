; defining bootstrap parser
; parsing peg grammar definition
; generating compiled parser
; compiling generated parser
; reparsing grammar definition
; comparing output
; dumping generated parser
(define-class <peg-parser> <parser> ())
(define-selector $gen_cola)
(define-selector $gen_cola_definitions)
(define-selector $gen_cola_definition)
(define-selector $gen_cola_declarations)
(define-selector $gen_cola_declaration)
(define-selector $start)
(define-selector $definition)
(define-selector $expression)
(define-selector $sequence)
(define-selector $predicate)
(define-selector $conversion)
(define-selector $repetition)
(define-selector $atom)
(define-selector $llist)
(define-selector $sexpr)
(define-selector $rlist)
(define-selector $relement)
(define-selector $variable)
(define-selector $variable2)
(define-selector $symbol)
(define-selector $symchar)
(define-selector $class)
(define-selector $string)
(define-selector $char)
(define-selector $identifier)
(define-selector $letter)
(define-selector $number)
(define-selector $digit)
(define-selector $dot)
(define-selector $rbrace)
(define-selector $lbrace)
(define-selector $rangle)
(define-selector $langle)
(define-selector $rparen)
(define-selector $lparen)
(define-selector $star)
(define-selector $plus)
(define-selector $query)
(define-selector $at)
(define-selector $dollar)
(define-selector $dollardbl)
(define-selector $dollarhash)
(define-selector $comma)
(define-selector $commaat)
(define-selector $backquote)
(define-selector $quotesgl)
(define-selector $arrow)
(define-selector $colondbl)
(define-selector $colon)
(define-selector $ampersand)
(define-selector $pling)
(define-selector $bar)
(define-selector $space)
(define-selector $comment)
(define-selector $eol)
(define-selector $blank)
(define-selector $equals)
(define-method $gen_cola <peg-parser> () (let ((b) (a)) (let ((pos (oop-at self.source 1))) (or (and (let ((pos (oop-at self.source 1))) (and ($gen_cola_declarations self) (set-oop-at self.source 1 pos))) (let ((pos (oop-at self.source 1))) (or (and (let () (set a self.result) (quote t)) (let ((pos (oop-at self.source 1))) (or (and ($gen_cola_definitions self) (let ((pos (oop-at self.source 1))) (or (and (let () (set b self.result) (quote t)) (let () (set self.result (concat-list a b)) (quote t))) (let () (set-oop-at self.source 1 pos) ())))) (let () (set-oop-at self.source 1 pos) ())))) (let () (set-oop-at self.source 1 pos) ())))) (let () (set-oop-at self.source 1 pos) ())))))
(define-method $gen_cola_definitions <peg-parser> () (let () (let ((_list_ (group))) (while ($gen_cola_definition self) (group-append _list_ self.result)) (set self.result (group->list! _list_)) (quote t))))
(define-method $gen_cola_definition <peg-parser> () (let ((exp) (id)) (let ((pos (oop-at self.source 1))) (or (and (and (pair? (parser-stream-peek self.source)) (let ((src self.source)) (set self.source (parser-stream (list-stream (parser-stream-peek src)))) (let ((ok (let ((pos (oop-at self.source 1))) (or (and (and (= (quote rule) (parser-stream-peek self.source)) (set self.result (parser-stream-next self.source))) (let ((pos (oop-at self.source 1))) (or (and (set self.result (parser-stream-next self.source)) (let ((pos (oop-at self.source 1))) (or (and (let () (set id self.result) (quote t)) (let ((pos (oop-at self.source 1))) (or (and (set self.result (parser-stream-next self.source)) (let () (set exp self.result) (quote t))) (let () (set-oop-at self.source 1 pos) ())))) (let () (set-oop-at self.source 1 pos) ())))) (let () (set-oop-at self.source 1 pos) ())))) (let () (set-oop-at self.source 1 pos) ()))))) (set self.source src) (and ok (parser-stream-next src))))) (let () (set self.result (cons (quote define-method) (cons id (cons (quote <peg-parser>) (cons (quote ()) (cons (cons (quote let) (cons (quote ()) (cons exp (quote ())))) (quote ()))))))) (quote t))) (let () (set-oop-at self.source 1 pos) ())))))
(define-method $gen_cola_declarations <peg-parser> () (let () (let ((_list_ (group))) (while ($gen_cola_declaration self) (group-append _list_ self.result)) (set self.result (group->list! _list_)) (quote t))))
(define-method $gen_cola_declaration <peg-parser> () (let ((id)) (let ((pos (oop-at self.source 1))) (or (and (and (pair? (parser-stream-peek self.source)) (let ((src self.source)) (set self.source (parser-stream (list-stream (parser-stream-peek src)))) (let ((ok (let ((pos (oop-at self.source 1))) (or (and (and (= (quote rule) (parser-stream-peek self.source)) (set self.result (parser-stream-next self.source))) (let ((pos (oop-at self.source 1))) (or (and (set self.result (parser-stream-next self.source)) (let () (set id self.result) (quote t))) (let () (set-oop-at self.source 1 pos) ())))) (let () (set-oop-at self.source 1 pos) ()))))) (set self.source src) (and ok (parser-stream-next src))))) (let () (set self.result (cons (quote define-selector) (cons id (quote ())))) (quote t))) (let () (set-oop-at self.source 1 pos) ())))))
(define-method $start <peg-parser> () (let () ($definition self)))
(define-method $definition <peg-parser> () (let ((e) (id)) (let ((pos (oop-at self.source 1))) (or (and ($space self) (let ((pos (oop-at self.source 1))) (or (and ($identifier self) (let ((pos (oop-at self.source 1))) (or (and (let () (set id self.result) (quote t)) (let ((pos (oop-at self.source 1))) (or (and ($equals self) (let ((pos (oop-at self.source 1))) (or (and ($expression self) (let ((pos (oop-at self.source 1))) (or (and (let () (set e self.result) (quote t)) (let ((pos (oop-at self.source 1))) (or (and (set self.result (parser-stream-match-string self.source ";")) (let () (set self.result (cons (quote rule) (cons id (cons e (quote ()))))) (quote t))) (let () (set-oop-at self.source 1 pos) ())))) (let () (set-oop-at self.source 1 pos) ())))) (let () (set-oop-at self.source 1 pos) ())))) (let () (set-oop-at self.source 1 pos) ())))) (let () (set-oop-at self.source 1 pos) ())))) (let () (set-oop-at self.source 1 pos) ())))) (let () (set-oop-at self.source 1 pos) ())))))
(define-method $expression <peg-parser> () (let ((e) (s)) (let ((pos (oop-at self.source 1))) (or (and ($sequence self) (let ((pos (oop-at self.source 1))) (or (and (let () (set s self.result) (quote t)) (let ((pos (oop-at self.source 1))) (or (and (let ((_list_ (group))) (and (let ((pos (oop-at self.source 1))) (or (and ($bar self) (let ((pos (oop-at self.source 1))) (or (and ($expression self) (let ((pos (oop-at self.source 1))) (or (and (let () (set e self.result) (quote t)) (let ((pos (oop-at self.source 1))) (or (and (let () (set self.result (cons (quote match-first) (cons s (cons e (quote ()))))) (quote t)) (let () (set s self.result) (quote t))) (let () (set-oop-at self.source 1 pos) ())))) (let () (set-oop-at self.source 1 pos) ())))) (let () (set-oop-at self.source 1 pos) ())))) (let () (set-oop-at self.source 1 pos) ()))) (group-append _list_ self.result)) (set self.result (group->list! _list_)) (quote t)) (let () (set self.result s) (quote t))) (let () (set-oop-at self.source 1 pos) ())))) (let () (set-oop-at self.source 1 pos) ())))) (let () (set-oop-at self.source 1 pos) ())))))
(define-method $sequence <peg-parser> () (let ((e) (p)) (let ((pos (oop-at self.source 1))) (or (and ($predicate self) (let ((pos (oop-at self.source 1))) (or (and (let () (set p self.result) (quote t)) (let ((pos (oop-at self.source 1))) (or (and (let ((_list_ (group))) (and (let ((pos (oop-at self.source 1))) (or (and ($sequence self) (let ((pos (oop-at self.source 1))) (or (and (let () (set e self.result) (quote t)) (let ((pos (oop-at self.source 1))) (or (and (let () (set self.result (cons (quote match-both) (cons p (cons e (quote ()))))) (quote t)) (let () (set p self.result) (quote t))) (let () (set-oop-at self.source 1 pos) ())))) (let () (set-oop-at self.source 1 pos) ())))) (let () (set-oop-at self.source 1 pos) ()))) (group-append _list_ self.result)) (set self.result (group->list! _list_)) (quote t)) (let () (set self.result p) (quote t))) (let () (set-oop-at self.source 1 pos) ())))) (let () (set-oop-at self.source 1 pos) ())))) (let () (set-oop-at self.source 1 pos) ())))))
(define-method $predicate <peg-parser> () (let ((e)) (or (let ((pos (oop-at self.source 1))) (or (and ($pling self) (let ((pos (oop-at self.source 1))) (or (and ($conversion self) (let ((pos (oop-at self.source 1))) (or (and (let () (set e self.result) (quote t)) (let () (set self.result (cons (quote peek-not) (cons e (quote ())))) (quote t))) (let () (set-oop-at self.source 1 pos) ())))) (let () (set-oop-at self.source 1 pos) ())))) (let () (set-oop-at self.source 1 pos) ()))) (or (let ((pos (oop-at self.source 1))) (or (and ($ampersand self) (let ((pos (oop-at self.source 1))) (or (and ($conversion self) (let ((pos (oop-at self.source 1))) (or (and (let () (set e self.result) (quote t)) (let () (set self.result (cons (quote peek-for) (cons e (quote ())))) (quote t))) (let () (set-oop-at self.source 1 pos) ())))) (let () (set-oop-at self.source 1 pos) ())))) (let () (set-oop-at self.source 1 pos) ()))) ($conversion self)))))
(define-method $conversion <peg-parser> () (let ((e)) (let ((pos (oop-at self.source 1))) (or (and ($repetition self) (let ((pos (oop-at self.source 1))) (or (and (let () (set e self.result) (quote t)) (let ((pos (oop-at self.source 1))) (or (and (let ((_list_ (group))) (while (or (let ((pos (oop-at self.source 1))) (or (and ($at self) (let ((pos (oop-at self.source 1))) (or (and (let () (set self.result (cons (quote make-span) (cons e (quote ())))) (quote t)) (let () (set e self.result) (quote t))) (let () (set-oop-at self.source 1 pos) ())))) (let () (set-oop-at self.source 1 pos) ()))) (or (let ((pos (oop-at self.source 1))) (or (and ($dollarhash self) (let ((pos (oop-at self.source 1))) (or (and (let () (set self.result (cons (quote make-number) (cons e (quote ())))) (quote t)) (let () (set e self.result) (quote t))) (let () (set-oop-at self.source 1 pos) ())))) (let () (set-oop-at self.source 1 pos) ()))) (or (let ((pos (oop-at self.source 1))) (or (and ($dollardbl self) (let ((pos (oop-at self.source 1))) (or (and (let () (set self.result (cons (quote make-symbol) (cons e (quote ())))) (quote t)) (let () (set e self.result) (quote t))) (let () (set-oop-at self.source 1 pos) ())))) (let () (set-oop-at self.source 1 pos) ()))) (let ((pos (oop-at self.source 1))) (or (and ($dollar self) (let ((pos (oop-at self.source 1))) (or (and (let () (set self.result (cons (quote make-string) (cons e (quote ())))) (quote t)) (let () (set e self.result) (quote t))) (let () (set-oop-at self.source 1 pos) ())))) (let () (set-oop-at self.source 1 pos) ())))))) (group-append _list_ self.result)) (set self.result (group->list! _list_)) (quote t)) (let () (set self.result e) (quote t))) (let () (set-oop-at self.source 1 pos) ())))) (let () (set-oop-at self.source 1 pos) ())))) (let () (set-oop-at self.source 1 pos) ())))))
(define-method $repetition <peg-parser> () (let ((e)) (let ((pos (oop-at self.source 1))) (or (and ($atom self) (let ((pos (oop-at self.source 1))) (or (and (let () (set e self.result) (quote t)) (let ((pos (oop-at self.source 1))) (or (and (let ((_list_ (group))) (and (or (let ((pos (oop-at self.source 1))) (or (and ($query self) (let ((pos (oop-at self.source 1))) (or (and (let () (set self.result (cons (quote match-zero-one) (cons e (quote ())))) (quote t)) (let () (set e self.result) (quote t))) (let () (set-oop-at self.source 1 pos) ())))) (let () (set-oop-at self.source 1 pos) ()))) (or (let ((pos (oop-at self.source 1))) (or (and ($star self) (let ((pos (oop-at self.source 1))) (or (and (let () (set self.result (cons (quote match-zero-more) (cons e (quote ())))) (quote t)) (let () (set e self.result) (quote t))) (let () (set-oop-at self.source 1 pos) ())))) (let () (set-oop-at self.source 1 pos) ()))) (let ((pos (oop-at self.source 1))) (or (and ($plus self) (let ((pos (oop-at self.source 1))) (or (and (let () (set self.result (cons (quote match-one-more) (cons e (quote ())))) (quote t)) (let () (set e self.result) (quote t))) (let () (set-oop-at self.source 1 pos) ())))) (let () (set-oop-at self.source 1 pos) ()))))) (group-append _list_ self.result)) (set self.result (group->list! _list_)) (quote t)) (let () (set self.result e) (quote t))) (let () (set-oop-at self.source 1 pos) ())))) (let () (set-oop-at self.source 1 pos) ())))) (let () (set-oop-at self.source 1 pos) ())))))
(define-method $atom <peg-parser> () (let ((i) (e)) (or (let ((pos (oop-at self.source 1))) (or (and ($lparen self) (let ((pos (oop-at self.source 1))) (or (and ($expression self) (let ((pos (oop-at self.source 1))) (or (and (let () (set e self.result) (quote t)) (let ((pos (oop-at self.source 1))) (or (and ($rparen self) (let () (set self.result e) (quote t))) (let () (set-oop-at self.source 1 pos) ())))) (let () (set-oop-at self.source 1 pos) ())))) (let () (set-oop-at self.source 1 pos) ())))) (let () (set-oop-at self.source 1 pos) ()))) (or (let ((pos (oop-at self.source 1))) (or (and ($quotesgl self) (let ((pos (oop-at self.source 1))) (or (and ($sexpr self) (let ((pos (oop-at self.source 1))) (or (and (let () (set e self.result) (quote t)) (let () (set self.result (cons (quote match-object) (cons e (quote ())))) (quote t))) (let () (set-oop-at self.source 1 pos) ())))) (let () (set-oop-at self.source 1 pos) ())))) (let () (set-oop-at self.source 1 pos) ()))) (or (let ((pos (oop-at self.source 1))) (or (and ($string self) (let ((pos (oop-at self.source 1))) (or (and (let () (set e self.result) (quote t)) (let () (set self.result (cons (quote match-string) (cons e (quote ())))) (quote t))) (let () (set-oop-at self.source 1 pos) ())))) (let () (set-oop-at self.source 1 pos) ()))) (or (let ((pos (oop-at self.source 1))) (or (and ($class self) (let ((pos (oop-at self.source 1))) (or (and (let () (set e self.result) (quote t)) (let () (set self.result (cons (quote match-class) (cons e (quote ())))) (quote t))) (let () (set-oop-at self.source 1 pos) ())))) (let () (set-oop-at self.source 1 pos) ()))) (or (let ((pos (oop-at self.source 1))) (or (and ($identifier self) (let ((pos (oop-at self.source 1))) (or (and (let () (set e self.result) (quote t)) (let () (set self.result (cons (quote match-rule) (cons e (quote ())))) (quote t))) (let () (set-oop-at self.source 1 pos) ())))) (let () (set-oop-at self.source 1 pos) ()))) (or (let ((pos (oop-at self.source 1))) (or (and ($lbrace self) (let ((pos (oop-at self.source 1))) (or (and (let ((_list_ (group))) (while ($sexpr self) (group-append _list_ self.result)) (set self.result (group->list! _list_)) (quote t)) (let ((pos (oop-at self.source 1))) (or (and (let () (set e self.result) (quote t)) (let ((pos (oop-at self.source 1))) (or (and ($rbrace self) (let () (set self.result (cons (quote match-rule) e)) (quote t))) (let () (set-oop-at self.source 1 pos) ())))) (let () (set-oop-at self.source 1 pos) ())))) (let () (set-oop-at self.source 1 pos) ())))) (let () (set-oop-at self.source 1 pos) ()))) (or (let ((pos (oop-at self.source 1))) (or (and ($dot self) (let () (set self.result (cons (quote match-any) (quote ()))) (quote t))) (let () (set-oop-at self.source 1 pos) ()))) (or (let ((pos (oop-at self.source 1))) (or (and ($arrow self) (let ((pos (oop-at self.source 1))) (or (and ($sexpr self) (let ((pos (oop-at self.source 1))) (or (and (let () (set e self.result) (quote t)) (let () (set self.result (cons (quote result-expr) (cons e (quote ())))) (quote t))) (let () (set-oop-at self.source 1 pos) ())))) (let () (set-oop-at self.source 1 pos) ())))) (let () (set-oop-at self.source 1 pos) ()))) (or (let ((pos (oop-at self.source 1))) (or (and ($backquote self) (let ((pos (oop-at self.source 1))) (or (and ($llist self) (let ((pos (oop-at self.source 1))) (or (and (let () (set e self.result) (quote t)) (let () (set self.result (cons (quote match-list) (cons e (quote ())))) (quote t))) (let () (set-oop-at self.source 1 pos) ())))) (let () (set-oop-at self.source 1 pos) ())))) (let () (set-oop-at self.source 1 pos) ()))) (let ((pos (oop-at self.source 1))) (or (and ($colon self) (let ((pos (oop-at self.source 1))) (or (and ($identifier self) (let ((pos (oop-at self.source 1))) (or (and (let () (set i self.result) (quote t)) (let () (set self.result (cons (quote assign-result) (cons i (quote ())))) (quote t))) (let () (set-oop-at self.source 1 pos) ())))) (let () (set-oop-at self.source 1 pos) ())))) (let () (set-oop-at self.source 1 pos) ()))))))))))))))
(define-method $llist <peg-parser> () (let ((e)) (let ((pos (oop-at self.source 1))) (or (and ($lparen self) (let ((pos (oop-at self.source 1))) (or (and ($expression self) (let ((pos (oop-at self.source 1))) (or (and (let () (set e self.result) (quote t)) (let ((pos (oop-at self.source 1))) (or (and ($rparen self) (let () (set self.result e) (quote t))) (let () (set-oop-at self.source 1 pos) ())))) (let () (set-oop-at self.source 1 pos) ())))) (let () (set-oop-at self.source 1 pos) ())))) (let () (set-oop-at self.source 1 pos) ())))))
(define-method $sexpr <peg-parser> () (let ((e)) (or ($symbol self) (or ($number self) (or ($string self) (or (let ((pos (oop-at self.source 1))) (or (and ($lparen self) (let ((pos (oop-at self.source 1))) (or (and (let ((_list_ (group))) (while ($sexpr self) (group-append _list_ self.result)) (set self.result (group->list! _list_)) (quote t)) (let ((pos (oop-at self.source 1))) (or (and (let () (set e self.result) (quote t)) (let ((pos (oop-at self.source 1))) (or (and ($rparen self) (let () (set self.result e) (quote t))) (let () (set-oop-at self.source 1 pos) ())))) (let () (set-oop-at self.source 1 pos) ())))) (let () (set-oop-at self.source 1 pos) ())))) (let () (set-oop-at self.source 1 pos) ()))) (or (let ((pos (oop-at self.source 1))) (or (and ($quotesgl self) (let ((pos (oop-at self.source 1))) (or (and ($sexpr self) (let ((pos (oop-at self.source 1))) (or (and (let () (set e self.result) (quote t)) (let () (set self.result (list (quote quote) e)) (quote t))) (let () (set-oop-at self.source 1 pos) ())))) (let () (set-oop-at self.source 1 pos) ())))) (let () (set-oop-at self.source 1 pos) ()))) (or (let ((pos (oop-at self.source 1))) (or (and ($backquote self) (let ((pos (oop-at self.source 1))) (or (and ($sexpr self) (let ((pos (oop-at self.source 1))) (or (and (let () (set e self.result) (quote t)) (let () (set self.result (list (quote quasiquote) e)) (quote t))) (let () (set-oop-at self.source 1 pos) ())))) (let () (set-oop-at self.source 1 pos) ())))) (let () (set-oop-at self.source 1 pos) ()))) (or (let ((pos (oop-at self.source 1))) (or (and ($commaat self) (let ((pos (oop-at self.source 1))) (or (and ($sexpr self) (let ((pos (oop-at self.source 1))) (or (and (let () (set e self.result) (quote t)) (let () (set self.result (list (quote unquote-splicing) e)) (quote t))) (let () (set-oop-at self.source 1 pos) ())))) (let () (set-oop-at self.source 1 pos) ())))) (let () (set-oop-at self.source 1 pos) ()))) (let ((pos (oop-at self.source 1))) (or (and ($comma self) (let ((pos (oop-at self.source 1))) (or (and ($sexpr self) (let ((pos (oop-at self.source 1))) (or (and (let () (set e self.result) (quote t)) (let () (set self.result (list (quote unquote) e)) (quote t))) (let () (set-oop-at self.source 1 pos) ())))) (let () (set-oop-at self.source 1 pos) ())))) (let () (set-oop-at self.source 1 pos) ()))))))))))))
(define-method $rlist <peg-parser> () (let ((e)) (let ((pos (oop-at self.source 1))) (or (and ($lparen self) (let ((pos (oop-at self.source 1))) (or (and (let ((_list_ (group))) (while ($relement self) (group-append _list_ self.result)) (set self.result (group->list! _list_)) (quote t)) (let ((pos (oop-at self.source 1))) (or (and (let () (set e self.result) (quote t)) (let ((pos (oop-at self.source 1))) (or (and ($rparen self) (let () (set self.result e) (quote t))) (let () (set-oop-at self.source 1 pos) ())))) (let () (set-oop-at self.source 1 pos) ())))) (let () (set-oop-at self.source 1 pos) ())))) (let () (set-oop-at self.source 1 pos) ())))))
(define-method $relement <peg-parser> () (let ((e)) (or (let ((pos (oop-at self.source 1))) (or (and ($symbol self) (let ((pos (oop-at self.source 1))) (or (and (let () (set e self.result) (quote t)) (let () (set self.result (cons (quote result-list-symbol) (cons e (quote ())))) (quote t))) (let () (set-oop-at self.source 1 pos) ())))) (let () (set-oop-at self.source 1 pos) ()))) (or (let ((pos (oop-at self.source 1))) (or (and ($variable2 self) (let ((pos (oop-at self.source 1))) (or (and (let () (set e self.result) (quote t)) (let () (set self.result (cons (quote result-list-variable-splicing) (cons e (quote ())))) (quote t))) (let () (set-oop-at self.source 1 pos) ())))) (let () (set-oop-at self.source 1 pos) ()))) (or (let ((pos (oop-at self.source 1))) (or (and ($variable self) (let ((pos (oop-at self.source 1))) (or (and (let () (set e self.result) (quote t)) (let () (set self.result (cons (quote result-list-variable) (cons e (quote ())))) (quote t))) (let () (set-oop-at self.source 1 pos) ())))) (let () (set-oop-at self.source 1 pos) ()))) (let ((pos (oop-at self.source 1))) (or (and ($rlist self) (let ((pos (oop-at self.source 1))) (or (and (let () (set e self.result) (quote t)) (let () (set self.result (cons (quote result-list-list) (cons e (quote ())))) (quote t))) (let () (set-oop-at self.source 1 pos) ())))) (let () (set-oop-at self.source 1 pos) ()))))))))
(define-method $variable <peg-parser> () (let () (let ((pos (oop-at self.source 1))) (or (and ($colon self) ($identifier self)) (let () (set-oop-at self.source 1 pos) ())))))
(define-method $variable2 <peg-parser> () (let () (let ((pos (oop-at self.source 1))) (or (and ($colondbl self) ($identifier self)) (let () (set-oop-at self.source 1 pos) ())))))
(define-method $symbol <peg-parser> () (let ((id)) (let ((pos (oop-at self.source 1))) (or (and (and (let ((pos (oop-at self.source 1))) (and (let ((pos (oop-at self.source 1))) (or (and ($symchar self) (let ((_list_ (group))) (while (or ($symchar self) ($digit self)) (group-append _list_ self.result)) (set self.result (group->list! _list_)) (quote t))) (let () (set-oop-at self.source 1 pos) ()))) (let () (set self.result (list-from-to pos (oop-at self.source 1))) (quote t)))) (set self.result (string->symbol (list->string self.result)))) (let ((pos (oop-at self.source 1))) (or (and (let () (set id self.result) (quote t)) (let ((pos (oop-at self.source 1))) (or (and ($space self) (let () (set self.result id) (quote t))) (let () (set-oop-at self.source 1 pos) ())))) (let () (set-oop-at self.source 1 pos) ())))) (let () (set-oop-at self.source 1 pos) ())))))
(define-method $symchar <peg-parser> () (let () (set self.result (parser-stream-match-class self.source "!#$%&*+-./<=>@ABCDEFGHIJKLMNOPQRSTUVWXYZ^_abcdefghijklmnopqrstuvwxyz|~"))))
(define-method $class <peg-parser> () (let ((s)) (let ((pos (oop-at self.source 1))) (or (and (set self.result (parser-stream-match-string self.source "[")) (let ((pos (oop-at self.source 1))) (or (and (and (let ((_list_ (group))) (while (let ((pos (oop-at self.source 1))) (or (and (not (let ((pos (oop-at self.source 1))) (and (set self.result (parser-stream-match-string self.source "]")) (set-oop-at self.source 1 pos)))) ($char self)) (let () (set-oop-at self.source 1 pos) ()))) (group-append _list_ self.result)) (set self.result (group->list! _list_)) (quote t)) (set self.result (list->string self.result))) (let ((pos (oop-at self.source 1))) (or (and (let () (set s self.result) (quote t)) (let ((pos (oop-at self.source 1))) (or (and (set self.result (parser-stream-match-string self.source "]")) (let ((pos (oop-at self.source 1))) (or (and ($space self) (let () (set self.result s) (quote t))) (let () (set-oop-at self.source 1 pos) ())))) (let () (set-oop-at self.source 1 pos) ())))) (let () (set-oop-at self.source 1 pos) ())))) (let () (set-oop-at self.source 1 pos) ())))) (let () (set-oop-at self.source 1 pos) ())))))
(define-method $string <peg-parser> () (let ((s)) (let ((pos (oop-at self.source 1))) (or (and (set self.result (parser-stream-match-string self.source "\"")) (let ((pos (oop-at self.source 1))) (or (and (and (let ((_list_ (group))) (while (let ((pos (oop-at self.source 1))) (or (and (not (let ((pos (oop-at self.source 1))) (and (set self.result (parser-stream-match-string self.source "\"")) (set-oop-at self.source 1 pos)))) ($char self)) (let () (set-oop-at self.source 1 pos) ()))) (group-append _list_ self.result)) (set self.result (group->list! _list_)) (quote t)) (set self.result (list->string self.result))) (let ((pos (oop-at self.source 1))) (or (and (let () (set s self.result) (quote t)) (let ((pos (oop-at self.source 1))) (or (and (set self.result (parser-stream-match-string self.source "\"")) (let ((pos (oop-at self.source 1))) (or (and ($space self) (let () (set self.result s) (quote t))) (let () (set-oop-at self.source 1 pos) ())))) (let () (set-oop-at self.source 1 pos) ())))) (let () (set-oop-at self.source 1 pos) ())))) (let () (set-oop-at self.source 1 pos) ())))) (let () (set-oop-at self.source 1 pos) ())))))
(define-method $char <peg-parser> () (let () (or (let ((pos (oop-at self.source 1))) (or (and (set self.result (parser-stream-match-string self.source "\\")) (or (let ((pos (oop-at self.source 1))) (or (and (set self.result (parser-stream-match-string self.source "t")) (let () (set self.result 9) (quote t))) (let () (set-oop-at self.source 1 pos) ()))) (or (let ((pos (oop-at self.source 1))) (or (and (set self.result (parser-stream-match-string self.source "n")) (let () (set self.result 10) (quote t))) (let () (set-oop-at self.source 1 pos) ()))) (or (let ((pos (oop-at self.source 1))) (or (and (set self.result (parser-stream-match-string self.source "r")) (let () (set self.result 13) (quote t))) (let () (set-oop-at self.source 1 pos) ()))) (set self.result (parser-stream-next self.source)))))) (let () (set-oop-at self.source 1 pos) ()))) (set self.result (parser-stream-next self.source)))))
(define-method $identifier <peg-parser> () (let ((id)) (let ((pos (oop-at self.source 1))) (or (and (and (let ((pos (oop-at self.source 1))) (and (let ((pos (oop-at self.source 1))) (or (and ($letter self) (let ((_list_ (group))) (while (or ($letter self) ($digit self)) (group-append _list_ self.result)) (set self.result (group->list! _list_)) (quote t))) (let () (set-oop-at self.source 1 pos) ()))) (let () (set self.result (list-from-to pos (oop-at self.source 1))) (quote t)))) (set self.result (string->symbol (list->string self.result)))) (let ((pos (oop-at self.source 1))) (or (and (let () (set id self.result) (quote t)) (let ((pos (oop-at self.source 1))) (or (and ($space self) (let () (set self.result id) (quote t))) (let () (set-oop-at self.source 1 pos) ())))) (let () (set-oop-at self.source 1 pos) ())))) (let () (set-oop-at self.source 1 pos) ())))))
(define-method $letter <peg-parser> () (let () (set self.result (parser-stream-match-class self.source "ABCDEFGHIJKLMNOPQRSTUVWXYZ_abcdefghijklmnopqrstuvwxyz"))))
(define-method $number <peg-parser> () (let ((n)) (let ((pos (oop-at self.source 1))) (or (and (and (let ((_list_ (group))) (while ($digit self) (group-append _list_ self.result)) (and (not (group-empty? _list_)) (let () (set self.result (group->list! _list_)) (quote t)))) (set self.result (string->number (list->string self.result)))) (let ((pos (oop-at self.source 1))) (or (and (let () (set n self.result) (quote t)) (let ((pos (oop-at self.source 1))) (or (and ($space self) (let () (set self.result n) (quote t))) (let () (set-oop-at self.source 1 pos) ())))) (let () (set-oop-at self.source 1 pos) ())))) (let () (set-oop-at self.source 1 pos) ())))))
(define-method $digit <peg-parser> () (let () (set self.result (parser-stream-match-class self.source "0123456789"))))
(define-method $dot <peg-parser> () (let () (let ((pos (oop-at self.source 1))) (or (and (set self.result (parser-stream-match-string self.source ".")) ($space self)) (let () (set-oop-at self.source 1 pos) ())))))
(define-method $rbrace <peg-parser> () (let () (let ((pos (oop-at self.source 1))) (or (and (set self.result (parser-stream-match-string self.source "}")) ($space self)) (let () (set-oop-at self.source 1 pos) ())))))
(define-method $lbrace <peg-parser> () (let () (let ((pos (oop-at self.source 1))) (or (and (set self.result (parser-stream-match-string self.source "{")) ($space self)) (let () (set-oop-at self.source 1 pos) ())))))
(define-method $rangle <peg-parser> () (let () (let ((pos (oop-at self.source 1))) (or (and (set self.result (parser-stream-match-string self.source ">")) ($space self)) (let () (set-oop-at self.source 1 pos) ())))))
(define-method $langle <peg-parser> () (let () (let ((pos (oop-at self.source 1))) (or (and (set self.result (parser-stream-match-string self.source "<")) ($space self)) (let () (set-oop-at self.source 1 pos) ())))))
(define-method $rparen <peg-parser> () (let () (let ((pos (oop-at self.source 1))) (or (and (set self.result (parser-stream-match-string self.source ")")) ($space self)) (let () (set-oop-at self.source 1 pos) ())))))
(define-method $lparen <peg-parser> () (let () (let ((pos (oop-at self.source 1))) (or (and (set self.result (parser-stream-match-string self.source "(")) ($space self)) (let () (set-oop-at self.source 1 pos) ())))))
(define-method $star <peg-parser> () (let () (let ((pos (oop-at self.source 1))) (or (and (set self.result (parser-stream-match-string self.source "*")) ($space self)) (let () (set-oop-at self.source 1 pos) ())))))
(define-method $plus <peg-parser> () (let () (let ((pos (oop-at self.source 1))) (or (and (set self.result (parser-stream-match-string self.source "+")) ($space self)) (let () (set-oop-at self.source 1 pos) ())))))
(define-method $query <peg-parser> () (let () (let ((pos (oop-at self.source 1))) (or (and (set self.result (parser-stream-match-string self.source "?")) ($space self)) (let () (set-oop-at self.source 1 pos) ())))))
(define-method $at <peg-parser> () (let () (let ((pos (oop-at self.source 1))) (or (and (set self.result (parser-stream-match-string self.source "@")) ($space self)) (let () (set-oop-at self.source 1 pos) ())))))
(define-method $dollar <peg-parser> () (let () (let ((pos (oop-at self.source 1))) (or (and (set self.result (parser-stream-match-string self.source "$")) ($space self)) (let () (set-oop-at self.source 1 pos) ())))))
(define-method $dollardbl <peg-parser> () (let () (let ((pos (oop-at self.source 1))) (or (and (set self.result (parser-stream-match-string self.source "$$")) ($space self)) (let () (set-oop-at self.source 1 pos) ())))))
(define-method $dollarhash <peg-parser> () (let () (let ((pos (oop-at self.source 1))) (or (and (set self.result (parser-stream-match-string self.source "$#")) ($space self)) (let () (set-oop-at self.source 1 pos) ())))))
(define-method $comma <peg-parser> () (let () (let ((pos (oop-at self.source 1))) (or (and (set self.result (parser-stream-match-string self.source ",")) ($space self)) (let () (set-oop-at self.source 1 pos) ())))))
(define-method $commaat <peg-parser> () (let () (let ((pos (oop-at self.source 1))) (or (and (set self.result (parser-stream-match-string self.source ",@")) ($space self)) (let () (set-oop-at self.source 1 pos) ())))))
(define-method $backquote <peg-parser> () (let () (let ((pos (oop-at self.source 1))) (or (and (set self.result (parser-stream-match-string self.source "`")) ($space self)) (let () (set-oop-at self.source 1 pos) ())))))
(define-method $quotesgl <peg-parser> () (let () (let ((pos (oop-at self.source 1))) (or (and (set self.result (parser-stream-match-string self.source "'")) ($space self)) (let () (set-oop-at self.source 1 pos) ())))))
(define-method $arrow <peg-parser> () (let () (let ((pos (oop-at self.source 1))) (or (and (set self.result (parser-stream-match-string self.source "->")) ($space self)) (let () (set-oop-at self.source 1 pos) ())))))
(define-method $colondbl <peg-parser> () (let () (let ((pos (oop-at self.source 1))) (or (and (set self.result (parser-stream-match-string self.source "::")) ($space self)) (let () (set-oop-at self.source 1 pos) ())))))
(define-method $colon <peg-parser> () (let () (let ((pos (oop-at self.source 1))) (or (and (set self.result (parser-stream-match-string self.source ":")) ($space self)) (let () (set-oop-at self.source 1 pos) ())))))
(define-method $ampersand <peg-parser> () (let () (let ((pos (oop-at self.source 1))) (or (and (set self.result (parser-stream-match-string self.source "&")) ($space self)) (let () (set-oop-at self.source 1 pos) ())))))
(define-method $pling <peg-parser> () (let () (let ((pos (oop-at self.source 1))) (or (and (set self.result (parser-stream-match-string self.source "!")) ($space self)) (let () (set-oop-at self.source 1 pos) ())))))
(define-method $bar <peg-parser> () (let () (let ((pos (oop-at self.source 1))) (or (and (set self.result (parser-stream-match-string self.source "|")) ($space self)) (let () (set-oop-at self.source 1 pos) ())))))
(define-method $space <peg-parser> () (let () (let ((_list_ (group))) (while (or ($blank self) (or ($eol self) ($comment self))) (group-append _list_ self.result)) (set self.result (group->list! _list_)) (quote t))))
(define-method $comment <peg-parser> () (let () (let ((pos (oop-at self.source 1))) (or (and (set self.result (parser-stream-match-string self.source "#")) (let ((_list_ (group))) (while (let ((pos (oop-at self.source 1))) (or (and (not (let ((pos (oop-at self.source 1))) (and ($eol self) (set-oop-at self.source 1 pos)))) (set self.result (parser-stream-next self.source))) (let () (set-oop-at self.source 1 pos) ()))) (group-append _list_ self.result)) (set self.result (group->list! _list_)) (quote t))) (let () (set-oop-at self.source 1 pos) ())))))
(define-method $eol <peg-parser> () (let () (or (let ((pos (oop-at self.source 1))) (or (and (set self.result (parser-stream-match-string self.source "\012")) (let ((_list_ (group))) (while (set self.result (parser-stream-match-string self.source "\015")) (group-append _list_ self.result)) (set self.result (group->list! _list_)) (quote t))) (let () (set-oop-at self.source 1 pos) ()))) (let ((pos (oop-at self.source 1))) (or (and (set self.result (parser-stream-match-string self.source "\015")) (let ((_list_ (group))) (while (set self.result (parser-stream-match-string self.source "\012")) (group-append _list_ self.result)) (set self.result (group->list! _list_)) (quote t))) (let () (set-oop-at self.source 1 pos) ()))))))
(define-method $blank <peg-parser> () (let () (set self.result (parser-stream-match-class self.source "\011 "))))
(define-method $equals <peg-parser> () (let () (let ((pos (oop-at self.source 1))) (or (and (set self.result (parser-stream-match-string self.source "=")) ($space self)) (let () (set-oop-at self.source 1 pos) ())))))
; parser bootstrap complete