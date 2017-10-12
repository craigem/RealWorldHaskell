-- file: ch03/Tuple.hs

{- As an example in pattern matching, here's a function that returns the last
element of a 3-tuple. -}
third (a, b, c) = c

{- An example that looks both inside a tuple and inside a list within that
tuple -}
complicated (True, a, x:xs, 5) = (a, xs)
