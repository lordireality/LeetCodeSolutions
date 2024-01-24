class Solution {
    func uniqueOccurrences(_ arr: [Int]) -> Bool {
        var numbers = [Int: Int]()
        for num in arr {
            numbers[num, default: 0] += 1
        }
        var counts = Set<Int>()
        for count in numbers.values {
            counts.insert(count)
        }

        return counts.count == numbers.count
    }
}
