-- file: ch02/myDrop.hs
{- The authors use this re-write of the "drop" function as an example of using
Haskell's "if" conditional. -}

myDrop :: Int -> [a] -> [a]
myDrop n xs = if n <= 0 || null xs
    then xs
    else myDrop (n - 1) (tail xs)

-- Reworking myDrop using guards
niceDrop n xs | n <= 0 = xs
niceDrop _ []          = []
niceDrop n (_:xs)      = niceDrop (n - 1) xs
