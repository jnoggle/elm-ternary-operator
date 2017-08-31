module Ternary exposing ((?), (!))

import Html exposing (Html, text)


ternary : Bool -> a -> a -> a
ternary condition consequent alternative =
    if condition then
        consequent
    else
        alternative


infixr 1 !
(!) : a -> a -> ( a, a )
(!) =
    (,)


infixr 1 ?
(?) : Bool -> ( a, a ) -> a
(?) condition ( consequent, alternative ) =
    if condition then
        consequent
    else
        alternative


main : Html a
main =
    text <| True ? "The Ternary operator is the best!" ! "Why spread lines out clearly when you can smush them into one?"
