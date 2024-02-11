

class StockSpanner {

    init() {
        
    }
    private var stacks = [(max: Int, count: Int)]()
    func next(_ price: Int) -> Int {
        var c = 1
        while !stacks.isEmpty, stacks[stacks.count - 1].max <= price {
            c += stacks[stacks.count - 1].count
            stacks.removeLast()
        }
        stacks.append((max: price, count: c))
        return c
    }
}

/**
 * Your StockSpanner object will be instantiated and called as such:
 * let obj = StockSpanner()
 * let ret_1: Int = obj.next(price)
 */
