module InfixExample exposing (..)


infixr 9 ?
(?) : Maybe a -> a -> a
(?) maybe default =
    Maybe.withDefault default maybe



-- Just 10 ? 0 => 10
-- Nothing ? 0 => 0
