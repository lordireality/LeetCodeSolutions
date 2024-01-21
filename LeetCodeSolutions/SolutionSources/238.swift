class Solution {
    
    //очень hard to undestood алгоритм.
    //пытался оптимизировать в один цикл, но это импосибл, т.к. нам потребуется в любом случае перевернутый массив, уже со значениями. если мы будем его переворачивать при формировании первого прохода теряем умножение каждого n+2 числа
    
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        var count = nums.count
        //заполняем единицами, что бы на старте при умножении не обнулится.
        //теоретически мы можем иметь 1 как первый элемент, остальные 0
        var result = Array(repeating: 1, count: count)

        for i in 1 ..< count {
            result[i] = result[i - 1] * nums[i - 1]
        }
        var post = 1
        for i in (0 ..< count).reversed() {
            result[i] *= post
            post *= nums[i]
        }

        return result
    }
}
