-- file: ch00/KMinima.hs
-- lines begining with "--" are comments.

minima k xs = take k (sort xs)

{- This is the authors example of efficient code using standard library
functions.

This example useslazy evaluation to find the "k" least valued elements of an
unsorted list -}
