\ LISP LIST-BUILDING WORDS IN FORTH-83

VARIABLE NIL NIL NIL ! \ THE EMPTY LIST

( #ITEMS -> ) \ #ITEMS = MAXIMUM NUMBER OF ITEMS THIS LIST

: newlist   CREATE HERE 2+ , NIL , 2* ALLOT ;
: first     @ ;                             ( @LIST -> @FIRST) \ @FIRST IS A POINTER TO FIRST ITEM OF LIST 
: null      @ NIL = ;                       ( @LIST | NIL -> FLAG) \ FLAG = TRUE IF LIST IS EMPTY 12 
: tail      DUP NULL IF @ ELSE 2- THEN ;    ( @LIST -> @TAIL) \ @TAIL IS A POINTER TO THE TAIL OF THE LIST