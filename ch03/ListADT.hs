-- file: ch03/ListADT.hs

{- Creating our own list-like type to further understand how Haskell's list
type is recursive, being defined in terms of itself -}
data List a = Cons a (List a)
            | Nil
            deriving (Show)

-- Proving our List type is the same as the built-in list type
fromList (x:xs) = Cons x (fromList xs)
fromList []     = Nil
