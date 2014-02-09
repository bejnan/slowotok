module Main where
import System.IO
import Program

main::IO()
main = do
        inputHandle <- openFile "slowa-utf8.txt" ReadMode
        outputHandle <- openFile "wynik.txt" WriteMode
        hSetEncoding inputHandle utf8
        hSetEncoding outputHandle utf8
        content <- hGetContents inputHandle
        newContent <- printAnswer (makeWordList content)
        hPutStr outputHandle newContent
        hClose outputHandle
        hClose inputHandle