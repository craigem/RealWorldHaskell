-- file ch03/Lending.hs

-- Introducing local variables
lend amount balance = let reserve    = 800
                          newBalance = balance - amount
                      in if balance < reserve
                         then Nothing
                         else Just newBalance

-- Re-writing lend using where instead of let. where applies to preceding code
lend2 amount balance = if amount < reserve * 0.5
                       then Just newBalance
                       else Nothing
    where reserve    = 100
          newBalance = balance - amount

