-- file: ch03/add.hs

-- Reproducing the not function as an example in pattern matching on a bool

myNot True  = False
myNot False = True

-- A slightly more extended example, partially re-implemnting sum
sumList (x:xs) = x + sumList xs
sumList []     = 0
