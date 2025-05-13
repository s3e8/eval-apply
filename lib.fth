\ todo: 
\ buffer

\ parse-name
: parse-name ( -- c-addr u)
    bl word
    count
;

\ \ parse-line
\ : parse-line
\     0 >r
\     begin
\         bl word
\         dup c@ 0=
\     while
\         r@ cells buffer + !
\         1 r> + >r
\     repeat
\     drop
\     r>
\ ;

\ echo
: echo ( -- )
    parse-name
    type cr
;
\ \ echo
\ : echo ( -- )
\     bl word \ parse next word (returns counted string address)
\     count   \ conver counted string to addr-len (alternate to word>str)
\     type cr \ print it
\ ;