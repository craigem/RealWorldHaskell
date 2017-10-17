-- file: ch03/NestedLets.hs

-- Nested Lets example
foo = let a = 1
      in let b = 2
         in a + b

{- You can also repeat variable names, although it's not recommended and is
called "shadowing" -}
bar = let x = 1
      in ((let x = "foo" in x), x)

-- You can also shadow a functions parameters.
quux a = let a = "foo"
         in a ++ "eek!"

{- Shadowing can lead to nasty bugs and GHC can check for them with
-fwarn-name-shadowing -}
