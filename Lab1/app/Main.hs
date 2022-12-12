#!/usr/bin/env stack

{-# LANGUAGE OverloadedStrings #-}
module Main where

import MySQLConnector ( connectDB, deployDB, closeDB )
import qualified UserInteraction as UI ( doAction )


main :: IO ()
main = do

    conn <- connectDB
    deployDB conn

    UI.doAction conn
    
    closeDB conn


