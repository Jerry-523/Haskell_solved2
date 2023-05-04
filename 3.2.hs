


nota isApproved [] = []
nota isApproved (x:xs) = if isApproved x == True then [x] ++ nota isApproved xs
                            else nota isApproved xs



isApproved :: (Ord a1, Num a1) => (a2, a1) -> Bool
isApproved (a, b) = if b >= 10 then True
                else False

