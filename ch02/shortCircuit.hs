-- file: ch02/shortCircuit.hs
{- Though haskell does not need short-circuit capability due to nonstrict
evaluation building this capability into the language, the authors provide this
example of a short-circuit implemented in haskell -}

newOr a b = if a then a else b
