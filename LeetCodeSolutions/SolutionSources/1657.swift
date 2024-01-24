
class Solution {
    func closeStrings(_ word1: String, _ word2: String) -> Bool {
        var dict1 = word1.reduce(into: [:]) { dict, word in dict[word, default: 0] += 1 }
        var dict2 = word2.reduce(into: [:]) { dict, word in dict[word, default: 0] += 1 }
        return  dict1.keys != dict2.keys ? false : !(dict1.values.sorted() != dict2.values.sorted())
    }
}
