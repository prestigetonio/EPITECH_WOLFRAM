{-
-- EPITECH PROJECT, 2025
-- B-FUN-wolfram
-- File description:
-- Args
-}

module Args (parse_args) where
    
import System.Exit (exitWith, ExitCode (ExitFailure))
import Wolfram (check_option, make_all_rule)
import Help (help)

parse_args :: [String] -> IO ()
parse_args args
    | "--rule" `elem` args =
        check_option "--rule" args >>= \ruleOpt ->
        check_option "--lines" args >>= make_all_rule ruleOpt
    | "--start" `elem` args  = check_option "--start" args >> return ()
    | "--lines" `elem` args  = check_option "--lines" args >> return ()
    | "--window" `elem` args = check_option "--window" args >> return ()
    | "--move" `elem` args   = check_option "--move" args >> return ()
    | otherwise = help >> exitWith (ExitFailure 84)
