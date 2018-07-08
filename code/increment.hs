{- increment.hs -}

import Control.Monad

inc :: Int -> Int
inc = (+ 1)

addSpace :: Show a => a -> String
addSpace el = show el ++ " "

-- Increment prior to printing
priorIncrement :: Int -> Int -> IO ()
priorIncrement start stop = if stop < start then print stop
                            else (mapM_ (putStr . addSpace . inc) [start..stop]) >> putStrLn ""

-- Increment after printing
postIncrement :: Int -> Int -> IO ()
postIncrement start stop = if stop < start then print stop
                           else foldM unit start [start..(stop - 1)] >>= print
  where
    unit :: Int -> Int -> IO Int
    unit i acc = (putStr . addSpace $ acc) >> return (inc i)
 
main :: IO ()
main = (postIncrement 1 10) >>= (\() -> priorIncrement 1 10) 
