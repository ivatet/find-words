module Lib
    ( findWords
    ) where

import Data.Char

wordLength :: String -> Int
wordLength [] = 0
wordLength (x:xs)
    | isLetter x = 1 + wordLength xs
    | otherwise  = 0

findWords :: String -> [String]
findWords [] = []
findWords (x:xs)
    | isLetter x =
        let len = (wordLength (x:xs))
        in [take len (x:xs)] ++ findWords (drop len (x:xs))
    | otherwise  = findWords xs
