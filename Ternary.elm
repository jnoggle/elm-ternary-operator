module Ternary exposing ((?), (!))


(!) : a -> a -> ( a, a )
(!) =
    (,)
infix 2 !


(?) : Bool -> ( a, a ) -> a
(?) cond ( expression, alternative ) =
    if cond then
        expression
    else
        alternative
infix 1 ?
