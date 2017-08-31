# Implementing the Ternary Operator

## Defining Infix Operations

```
infixr 9 ?
(?) : Maybe a -> a -> a
(?) maybe default =
    Maybe.withDefault default maybe
```

`Just 10 ? 0`
    10
`Nothing ? 0`
    0

## Assigning Precedence

precedence  left associative    right associative
9           >>	                <<
8                               ^
7           * / // % rem	
6           + −	
5                               ++ ::
4                       == /= < > <= >= *
3                               &&
2                               ||
0           |>	                        <|

Function application (by adjacency) is higher priority than all operators and is left-associative:
f g h x is interpreted as ((f g) h) x.

The comparison operators (precedence 4) are non-associative.

## Operator Associativity

How operations of the same precedence are grouped without parenthesis

left    infixl
right   infixr
non     infix

## Breaking down the ternary operator

Infix
```
condition ? consequent : alternative
```

Non infix
```
ternary : Bool -> a -> a -> a
ternary condition consequent alternative =
    if condition then
        consequent
    else
        alternative
```

Three arguments, not two. How can infix work?

```
infixr 1 ?
(?) : Bool -> ( a, a ) -> a
(?) condition ( consequent, alternative ) =
    if condition then
        consequent
    else
        alternative
```

So what does `:` look like? (colon is taken, so we use bang)

```
infixr 1 !
(!) : a -> a -> ( a, a )
(!) =
    (,)
```