//решение только для подсчета чисел
class Solution {
    func compress(_ chars: inout [Character]) -> Int {
        var totalcount = 0
        var count = 1
        for i in 1 ..< chars.count {
            if chars[i] == chars[i - 1] {
                count += 1
            } else {
                totalcount += 1 + (count > 1 ? "\(count)".count : 0)
                count = 1
            }
        }
        totalcount += 1 + (count > 1 ? "\(count)".count : 0)
        return totalcount
    }
}
//полное решение
class Solution {
    func compress(_ chars: inout [Character]) -> Int {
        var buffer = ""
        var count = 1
        for i in 1 ..< chars.count {
            //смотрим что совпало с предыдущим. если да, то икрементим кол-во букв
            if chars[i] == chars[i - 1] {
                count += 1
            } else {
                //если у нас не было совпадения ранее, выплевываем пред букву, и кол-во совпадений, если счетчик больше 1, то пишем число т.е. а2
                buffer += "\(chars[i - 1])" + (count > 1 ? "\(count)" : "")
                count = 1
            }
        }
        buffer += "\(chars.last!)" + (count > 1 ? "\(count)" : "")
        chars = Array(buffer)
        return chars.count
    }
}
