
func removeDuplicates(_ nums: inout [Int]) -> Int {
    if nums.count == 0 {
        return 0
    }
    let count = nums.count
    var currentIndex = 0
    var i = 1
    while i < count {
        while i < count && nums[i] == nums[currentIndex] {
            i += 1
        }
        if i < count {
            currentIndex += 1
            nums[currentIndex] = nums[i]
        }
    }
    nums.removeLast(count - currentIndex - 1)
    return nums.count
}
//var nums = [0,0,1,1,1,2,2,3,3,4]
var nums = [1, 1, 2]
removeDuplicates(&nums)
