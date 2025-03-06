{-
-- EPITECH PROJECT, 2025
-- B-FUN-wolfram
-- File description:
-- Main
-}

module Main (main) where

import System.Environment (getArgs)
import Args (parse_args)

main :: IO ()
main = do
    args <- getArgs
    parse_args args
