{-
 - Lets implement the UNIX echo command
 - The program arguments are simply printed to the standard output.
 - If the first argument is -n, this argument is not printed, and no trailing newline is printed
 -}

import System.Environment
  
main = do
  args <- getArgs
  case null args of
    True -> return () -- do nothing if no arguments
    False -> case head args of
      "-n" -> putStr $ unwords $ tail args
      _ -> putStrLn $ unwords args

{- Write a lottery number picker
 - This function should take a StdGen instance, and produce a list of six unique numbers between 1 and 49, in numerical order
 -}
-- lottery :: StdGen -> [Int]
-- lottery gen = undefined
