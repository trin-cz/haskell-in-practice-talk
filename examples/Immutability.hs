module Main where

data Point = Point Int Int

pX (Point x _) = x

pY (Point _ y) = y

setX (Point x y) new_x = Point new_x y

main = do
    let p1  = Point 5 7
        p2  = p1
    putStrLn . show $ (pX p2, pY p2)
    let p1' = setX p1 211
    putStrLn . show $ (pX p2, pY p2)
