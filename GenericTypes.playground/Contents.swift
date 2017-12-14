//: Playground - noun: a place where people can play

import Foundation

//Generic Protocol
protocol DataSourceProtocol {
    associatedtype Item

    var sourceName: String { get set }
    func getData() -> [Item]
    func addData(data: Item)
}

//Generic Type
class DataSource<T>: DataSourceProtocol {
    typealias Item = T
    
    var sourceName: String
    var items: [Item] = []
    
    init(sourceName: String, items: [Item]){
        self.sourceName = sourceName
        self.items = items
    }
    
    func getData() -> [Item] {
        return items
    }
    
    func addData(data: Item) {
        items.append(data)
    }
}

let myDataSource = DataSource<Any>(sourceName: "", items: [1, "Feijão", 3])
myDataSource.getData()

let myDataSource2 = DataSource<Int>(sourceName: "", items: [1, 2, 3])
myDataSource2.getData()




