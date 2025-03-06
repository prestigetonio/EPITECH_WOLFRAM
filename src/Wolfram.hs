{-
-- EPITECH PROJECT, 2025
-- B-FUN-wolfram
-- File description:
-- Wolfram
-}

module Wolfram (make_all_rule, check_option, init_generation, make_rule, run) where

import Data.Maybe (fromMaybe)
import Rules (rule30, rule90, rule110)
import Rulesbonus (rule1)
import Help (help)

check_option :: String -> [String] -> IO (Maybe String)
check_option option args =
    case dropWhile (/= option) args of
        (_:val:_) -> return (Just val)
        _ -> return Nothing

make_all_rule :: Maybe String -> Maybe String -> IO ()
make_all_rule result line =
    let height = case line of
            Just str -> read str
            Nothing -> -1
    in case result of
        Just "1" -> run rule1 (init_generation 10000) height 0
        Just "30" -> run rule30 (init_generation 10000) height 0
        Just "90" -> run rule90 (init_generation 10000) height 0
        Just "110" -> run rule110 (init_generation 10000) height 0
        _ -> help

init_generation :: Int -> [Int]
init_generation size =
    replicate (div size 2) 0 ++ [1] ++ replicate (div size 2) 0

make_rule :: ((Int, Int, Int) -> Int) -> [Int] -> [Int]
make_rule rule gen =
    [ rule (left, center, right)
    | (left, center, right) <- zip3 (0:gen) gen (tail gen ++ [0]) ]

run :: ((Int, Int, Int) -> Int) -> [Int] -> Int -> Int -> IO ()
run _ _ 0 _ = return ()
run rule gen height move = do
    let size = 80
        start = (div (length gen) 2) - (div size 2) + move
        dislay = take size (drop start gen)
    putStrLn (map (\x -> if x == 1 then '*' else ' ') dislay)
    run rule (make_rule rule gen) (height - 1) move