module Program (
        makeWordList,
        printAnswer) 

where
import System.IO

makeWordList :: String -> [String]
makeWordListGen :: String -> String -> [String] -> [String]
prepareAnswer :: [String] -> [String] -> [String]
printAnswer :: [String] -> IO String

makeWordList a = makeWordListGen a [] []

makeWordListGen [] [] acc = reverse acc
makeWordListGen [] a acc = reverse ((reverse a):acc)
makeWordListGen (' ':xs) a acc = makeWordListGen xs [] ((reverse a):acc)
makeWordListGen (x:xs) a acc = makeWordListGen xs (x:a) acc

prepareAnswer [] [] = []

printAnswer s = return (concatMap(\a -> (a++"\n")) s)