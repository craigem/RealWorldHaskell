-- file: ch03/Tree.hs
-- A third example of a recursive type, using a binary tree type
data Tree a = Node a (Tree a) (Tree a)
            | Empty
            deriving (Show)

-- Haskell uses a no-argument Empty constructor, for efficient pattern matching
simpleTree = Node "parent" (Node "left child" Empty Empty)
                           (Node "right child" Empty Empty)
