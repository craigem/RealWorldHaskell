-- file: ch01/WC.hs
-- lines beginning with "--" are coments.

main = interact wordCount
    where wordCount input = show (length (input)) ++ "\n"
