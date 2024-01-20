class Solution {
    func canPlaceFlowers(_ flowerbed: [Int], _ n: Int) -> Bool {
        var ind = 0
        var left = n
        var arr = flowerbed //creating cache because flowerbed is const
        var count = arr.count
        while left > 0 && ind < count {
            if arr[ind] == 1 {
                ind += 1
            } else if (ind == 0 || flowerbed[ind - 1] == 0) && (ind + 1 >= count || arr[ind + 1] == 0) {
                arr[ind] = 1
                ind += 1
                left -= 1
            }
            ind += 1
        }
        return left == 0
    }
}
