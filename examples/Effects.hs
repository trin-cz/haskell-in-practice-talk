module Main where

import Control.Monad.State

data MyState = MyState Int

mystateAdd :: Int -> StateT MyState IO ()
mystateAdd valueDiff = do
  MyState value <- get
  put (MyState (value + valueDiff))

mystateValue :: StateT MyState IO Int
mystateValue = do
  MyState value <- get
  liftIO $ putStrLn "Value was read!"
  return value

mainAction :: StateT MyState IO ()
mainAction = do
    mystateAdd 3
    value <- mystateValue
    liftIO . putStrLn $ show value

main = runStateT mainAction (MyState 7)