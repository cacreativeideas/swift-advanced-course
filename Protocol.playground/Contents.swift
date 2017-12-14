import UIKit

protocol DataSource {
    var sourceName: String { get set }
    func getData() -> [String]
    func addData(data: String)
}

class Library: DataSource {
    var sourceName: String = "MyLibrary"
    
    var bookList: [String] = ["Book 1", "Book 2", "Book 3"]
    
    func getData() -> [String] {
        return bookList
    }
    
    func addData(data: String) {
        bookList.append(data)
    }
}

class StoreInventory: DataSource {
    var sourceName: String = "Grocery Store"
    
    var inventory: [String] = ["Apples", "Bananas", "Diapers"]
    
    func getData() -> [String] {
        return inventory
    }
    
    func addData(data: String) {
        inventory.append(data)
    }
}

var myDataSource: DataSource = Library()
