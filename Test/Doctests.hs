module Main where

import Test.DocTest

main :: IO ()
main = doctest ["Util/Sort.hs"]
