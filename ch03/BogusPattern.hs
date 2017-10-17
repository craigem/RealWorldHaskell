-- file: ch03/BogusPattern.hs

-- An example of incorrectly matching against a variable
data Fruit = Apple | Orange

apple = "apple"

orange = "orange"

whichFruit :: String -> Fruit

whichFruit f = case f of
                 apple  -> Apple
                 orange -> Orange

-- Correcting the code in an equational style
equational apple = Apple
equational orange = Orange

-- A corrected version of the function
betterFruit f = case f of
                  "apple"  -> Apple
                  "orange" -> Orange
