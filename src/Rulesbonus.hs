{-
-- EPITECH PROJECT, 2025
-- B-FUN-wolfram
-- File description:
-- Rulesbonus
-}

module Rulesbonus (rule1) where

rule1 :: (Int, Int, Int) -> Int
rule1 (1, 1, 1) = 0
rule1 (1, 1, 0) = 0
rule1 (1, 0, 1) = 0
rule1 (1, 0, 0) = 0
rule1 (0, 1, 1) = 0
rule1 (0, 1, 0) = 0
rule1 (0, 0, 1) = 0
rule1 (0, 0, 0) = 1
