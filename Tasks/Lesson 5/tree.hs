

data Tree a =EmptyTree 
    | Node a Int (Tree a) (Tree a) deriving (Show, Read, Eq)

singleton :: a -> Tree a
singleton x = Node x 1 EmptyTree EmptyTree

treeInsert :: (Ord a) => a -> Tree a -> Tree a
treeInsert x EmptyTree = singleton x
treeInsert x (Node a i left right)
    | x == a = Node x (i+1) left right
    | x < a  = Node a i (treeInsert x left) right
    | x > a  = Node a i left (treeInsert x right)

list2tree :: (Ord a) => [a] -> Tree a
list2tree = l2t EmptyTree
    where
        l2t acc [] = acc
        l2t acc (head:tail) = l2t (treeInsert head acc) tail