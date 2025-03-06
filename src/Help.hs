{-
-- EPITECH PROJECT, 2025
-- B-FUN-wolfram
-- File description:
-- Help
-}

module Help (help) where

import System.Exit (exitWith, ExitCode (ExitFailure))

help :: IO ()
help = putStrLn "usage : ./wolfram --rule (n)" >>
       exitWith (ExitFailure 84)
