-- file: ch03/AlgebraicVector.hs

-- A more subtle example of algebraic data types

-- x and y coordinates or lengths.
data Cartesian2D = Cartesian2D Double Double
    deriving (Eq, Show)

-- Angle and distance (magnitude)
data Polar2D = Polar2D Double Double
    deriving (Eq, Show)
