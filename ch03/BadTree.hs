-- file: ch03/BadTree.hs

-- Incorrectly trying to compare for equality
bad_nodesAreSame (Noda a _ _) (Node a _ _) = Just a
bad_nodesAreSame _            _            = Nothing

-- Using guards to correctly comapre for equality
nodesAreSame (Node a _ _) (Node b _ _)
    | a == b     = Just a
nodesAreSame _ _ = Nothing
