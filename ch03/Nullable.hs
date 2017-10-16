-- file: ch03/Nullable.hs
-- Parametized types, with polymorphism, using he Maybe type:

data Maybe a = Just a
             | Nothing

someBool = Just True
someString = Just "something"
wrapped = Just (Just "wrapped")

{- The above code does not work in my currenyt version of GHCI, which complains
that Just is already defined in Prelude -}
