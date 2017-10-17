-- file: ch03/Guard.hs

-- Using the case construct to match patterns within an expression
fromMaybe defval wrapped =
    case wrapped of
        Nothing     -> defval
        Just value  -> value
