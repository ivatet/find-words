module Main where

import Lib

main :: IO ()
main =
    let words = findWords "   I am  pickle RIIIICK     "
    in putStr (unlines words)
