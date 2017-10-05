-- file: ch02/myDrop.hs
{- The authors use this re-write of the "drop" function as an example of using
Haskell's "if" conditional. -}

myDrop n xs = if n <= 0 || null xs
    then xs
    else myDrop (n - 1) (tail xs)
