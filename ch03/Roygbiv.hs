-- file: ch03/Roygbiv.hs

{- Algebraic data types also serve where we’d use an enum in C or C++ to
represent a range of symbolic values. Such algebraic data types are sometimes
referred to as enumeration types -}

data Roygbiv = Red
             | Orange
             | Yellow
             | Green
             | Blue
             | Indigo
             | Violet
             deriving (Eq, Show)
