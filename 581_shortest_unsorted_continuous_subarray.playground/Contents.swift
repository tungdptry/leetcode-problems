
func findUnsortedSubarray(_ nums: [Int]) -> Int {
    let count = nums.count
    var begin = -1
    var end = -1
    for i in 0..<count - 1 {
        if nums[i] > nums[i + 1] {
            begin = i
            break
        }
    }
    if begin == -1 {
        return 0
    }
    for i in (1..<count).reversed() {
        if nums[i] < nums[i - 1] {
            end = i
            break
        }
    }
    if end == -1 {
        return count
    }
    var max = nums[begin...end].max()!
    var min = nums[begin...end].min()!
    while end < count - 1, max > nums[end + 1] {
        max = max2(max, nums[end + 1])
        end += 1
    }
    while begin > 0, min < nums[begin - 1] {
        min = min2(min, nums[begin - 1])
        begin -= 1
    }
    return end - begin + 1
}

func max2(_ a: Int, _ b: Int) -> Int {
    return a >= b ? a : b
}

func min2(_ a: Int, _ b: Int) -> Int {
    return a <= b ? a : b
}

//findUnsortedSubarray([2, 6, 4, 8, 10, 9, 15])
//findUnsortedSubarray([5, 6, 4, 8, 10, 12, 11])
//findUnsortedSubarray([1, 3, 2, 2, 2])
findUnsortedSubarray([1, 3, 2])
