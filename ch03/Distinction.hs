-- file: ch03/Distinction.hs

a = ("Porpoise", "Grey")
b = ("Table", "Oak")

data Cetacean = Cetacean String String
data Furniture = Furniture String String

c = Cetacean "Porpoise" "Grey"
d = Furniture "Table" "Oak"

{- This lets us bring the type system to bear in writing programs with fewer
bugs. With the tuples we just defined, we could conceivably pass a description
of a whale to a function expecting a chair, and the type system could not help
us. With the algebraic data types, there is no such possibility of confusion.
-}
