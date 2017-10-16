-- file: ch03/AltCustomer.hs
{- This is an example of a more familiar form of defining data types and their
components, in contrast to the example in BookStore.hs (Record Syntax, page 55
-}
data Customer = Customer Int String [String]
                deriving (Show)

customerID :: Customer -> Int
customerID (Customer id _ _) = id

customerName :: Customer -> String
customerName (Customer _ name _) = name

customerAddress :: Customer -> [String]
customerAddress (Customer _ _ address) = address
