class Solution {
    func gcdOfStrings(_ str1: String, _ str2: String) -> String {
        if !(str1 + str2 == str2 + str1){
            return ""
        }
        return String(str1.prefix(gcd(max(str1.count, str2.count), min(str1.count, str2.count))))
    }
    func gcd(_ l1: Int, _ l2: Int) -> Int {
        var l1 = l1
        var l2 = l2
        while l2 != 0 {
            let tmp = l2
            l2 = l1 % l2
            l1 = tmp
        }
        return l1
    }
}
