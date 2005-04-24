--
-- lambda abstraction!
--
--
-- needs unsafeEval because eval has a broken Dynamic check
--
import Eval.Haskell

main = do fn <- unsafeEval "(\\(x::Int) -> (x,x))" [] :: IO (Maybe (Int -> (Int,Int)))
          when (isJust fn) $ putStrLn $ show $ (fromJust fn) 7
