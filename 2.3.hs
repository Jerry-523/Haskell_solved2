intervalo :: Ord t => [t] -> t -> t -> [t]
intervalo [] a b = []
intervalo (x:xs) a b = if x >= a && x <= b then [x] ++ intervalo xs a b
                        else intervalo xs a b