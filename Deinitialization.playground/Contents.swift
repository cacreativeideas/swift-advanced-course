//: Playground - noun: a place where people can play

import UIKit

class FileReader {
    var fileName: String
    
    init(fileName: String){
        self.fileName = fileName
        print("Initializing a reader and opening the file")
    }
    
    func readNextLine() -> String {
        print("Seeking for next line in file to return")
        return "line"
    }
    
    deinit {
        print("Deinit is happening")
        print("Memory will soon be deallocated")
        print("Manually closing the opened file")
    }
}

var demoReader: FileReader?

demoReader = FileReader(fileName: "aFile")

demoReader?.readNextLine()

demoReader = nil //deallocate this instance
