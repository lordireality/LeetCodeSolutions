class Solution {
    //взято из решений, т.к. я хз как написать оптимизированный алгоритм для именно подсчета. если бы надо было вывести строку или че то то изи
    func isSubsequence(_ s: String, _ t: String) -> Bool {
        if (t.count  < s.count) {
            return false
        }
        var s1 = s
        for item in t {
            if item == s1.first {
                s1.removeFirst()
                if s1.count == 0 {return true }
            }
        }
        return s1.count == 0 ? true : false
    }
}
