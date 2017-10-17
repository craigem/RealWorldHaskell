-- file ch03/Lending.hs

-- Introducing local variables
lend amount balance = let reserve    = 800
                          newBalance = balance - amount
                      in if balance < reserve
                         then Nothing
                         else Just newBalance

