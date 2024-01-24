class Solution {
    func equalPairs(_ grid: [[Int]]) -> Int {
        let emptyColumn = Array<Int>.init(repeating: 0, count: grid.count)
        var columns: [[Int]] = .init(repeating: emptyColumn, count: grid.count)
        for (rowIndex, rowValue) in grid.enumerated() {
            for (columnIndex, rowValue) in rowValue.enumerated() {
                columns[columnIndex][rowIndex] = rowValue
            }
        }
        var matches = 0
        for column in columns {
            if grid.contains(column) {
                matches += grid.filter { $0 == column }.count
            }
        }
        
        return matches
    }
}
