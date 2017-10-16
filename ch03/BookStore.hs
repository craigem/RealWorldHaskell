-- file: ch03/BookStore.hs
-- Example of defining a new data typ for a fictional book store

data BookInfo = Book Int String [String]
    deriving (Show)

data MagazineInfo = Magazine Int String [String]
    deriving (Show)

data BookReview = BookReview BookInfo CustomerID String

{- The type keyword introduces a type synonym. The new name is on the left of
the = , with the existing name on the right. The two names identify the same
type, so type synonyms are purely for making code more readable. -}
type CustomerID = Int
type ReviewBody = String

data BetterReview = BetterReview BookInfo CustomerID ReviewBody

-- You can also use a type synonym to create a shorter name for a verbose type
type BookRecord = (BookInfo, BookReview)

myInfo = Book 9780135072455 "Algebra of Programming"
    ["Richard Bird", "Oege de Moor"]

{- Each of an algebraic data type’s value constructors can take zero or more
arguments. Here's one way to represent billing information -}
type CardHolder = String
type CardNumber = String
type Address = [String]

data BillingInfo = CreditCard CardNumber CardHolder Address
    | CashOnDelivery
    | Invoice CustomerID
      deriving (Show)

-- Pattern matching for BookInfo
bookID      (Book id title authors) = id
bookTitle   (Book id title authors) = title
bookAuthors (Book id title authors) = authors

-- Wild card pattern matching
nicerID      (Book id _     _      ) = id
nicerTitle   (Book _  title _      ) = title
nicerAuthors (Book _  _     authors) = authors

{- After the above, it turns out Haskell programmmers do not like boilerplate
and prefer to define a data type and the accessors for each of it's components
simultaneously -}
data Customer = Customer
    { customerID      :: CustomerID
    , customerName    :: String
    , customerAddress :: Address
    } deriving (Show)

-- Usual sytanx for value creation can still be used
customer1 = Customer 271828 "J.R. Hacker"
            [ "255 Sytnax Ct"
            , "Milpitas, CA 95134"
            , "USA"
            ]

-- Record syntax, which is more verbose, flexible and purportedly more readable
customer2 = Customer
            { customerID = 271828
            , customerAddress = [ "1048576 Disk Drive"
                                , "Milpitas, CA 95134"
                                , "USA"
                                ]
            , customerName = "Jane Q. Citizen"
            }


