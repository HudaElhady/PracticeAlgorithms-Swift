import Foundation

public class Node<T> {
    var value: T
    init(value: T) {
        self.value = value
    }
    var next: Node<T>?
    weak var previous: Node<T>?
}

public class LinkedList<T> {
    private var head: Node<T>?
    private var tail: Node<T>?
    
    public var isEmpty: Bool {
        return head == nil
    }
    
    public var first: Node<T>? {
        return head
    }
    
    public var last: Node<T>? {
        return tail
    }
    
    func append(value: T) {
        let newNode = Node(value: value)
        if let tailNode = last {
            newNode.previous = tailNode
            tailNode.next = newNode
        } else {
            head = newNode
        }
        tail = newNode
    }
    
    public func nodeAt(index: Int) -> Node<T>? {
        if index >= 0 {
           var i = index
            var node = first
            while node != nil {
                if i == 0 {return node}
                i -= 1
                node = node!.next
            }
        } else { return nil }
        return nil
    }
    
    public func removeAll() {
        head = nil
        tail = nil
    }
    
    public func remove(node: Node<T>) {
        let prev = node.previous
        let next = node.next
        
        if let prev = prev {
            prev.next = next
        } else {
            head = next
        }
        next?.previous = prev
        node.previous = nil
        
        if next == nil {
            tail = next
        }
        
        node.next = nil
    }
}

extension LinkedList: CustomStringConvertible {
    public var description: String {
        var text = "["
        var node = first
        while node != nil {
            text += "\(node!.value)"
            node = node?.next
            if node != nil {text += ","}
        }
        return text + "]"
    }
}
