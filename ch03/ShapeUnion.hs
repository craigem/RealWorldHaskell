-- file: ch03/ShapeUnion.hs

-- An example of a discriminated union

type Vector = (Double, Double)

data Shape = Circle Vector Double
           | Poly [Vector]
