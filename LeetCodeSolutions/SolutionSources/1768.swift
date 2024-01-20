class Solution {
    func mergeAlternately(_ word1: String, _ word2: String) -> String {
        var res: String = ""
        for ind in  0...max(word1.count, word2.count){
            res.append((getChar(word1, ind) ?? "") + (getChar(word2, ind) ?? ""))
        }
        return res
    }
    func getChar(_ word: String,_ ind :Int)->String?{
        if ind < word.count {
            return String(word[word.index(word.startIndex, offsetBy:ind)])
        }
        return nil
    }
}
