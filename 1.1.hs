fatores :: Integral a => a -> [a]
fatores n = [i | i<-[1..n], n `mod` i == 0]