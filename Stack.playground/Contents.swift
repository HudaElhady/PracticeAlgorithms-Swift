import Foundation

struct Stack <T> {
    fileprivate var array: [T] = []
    
    var isEmpty: Bool {
        return array.isEmpty
    }
    
    var count: Int {
        return array.count
    }
    
    mutating func push(_ element: T) {
        array.append(element)
    }
    
    mutating func pop() -> T? {
        return array.popLast()
    }
    
    func peek() -> T? {
        return array.last
    }
}

extension Stack: CustomStringConvertible{
    var description: String {
        return array.map{"\($0)"}.reversed().joined(separator: "\n")
    }
}
