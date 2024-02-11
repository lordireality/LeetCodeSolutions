private extension Array
{
    var start: Element { self[0] }
    var end: Element { self[1] }
}
class Solution
{
    func eraseOverlapIntervals(_ intervals: [[Int]]) -> Int
    {
        let minStartIntervals = intervals.sorted { $0.start < $1.start }
        var removedCount = 0, currentEnd = Int.min
        for interval in minStartIntervals
        {
            if interval.start >= currentEnd {
                currentEnd = interval.end
            }
            else
            {
                currentEnd = min(currentEnd, interval.end)
                removedCount += 1
            }
        }
        return removedCount
    }
}
