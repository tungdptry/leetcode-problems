
func checkPossibility(_ nums: [Int]) -> Bool {
    let count = nums.count
    if count <= 1 {
        return true
    }
    var i = 0
    var j = count - 1
    while i < count - 1, nums[i] <= nums[i+1] {
        i += 1
    }
    if i == count - 1 {
        return true
    }
    while nums[j] >= nums[j-1], j > i {
        j -= 1
    }
    if j - i > 1 {
        return false
    }
    if i == 0 || j == count - 1 || nums[i] < nums[j + 1] || nums[i - 1] < nums[j] {
        return true
    }
    return false
}
checkPossibility([1, 2, 3]) 
checkPossibility([3, 4, 6, 5, 2, 3]) // false
checkPossibility([3, 4, 2, 3]) // false
checkPossibility([4, 2, 3, 5]) // true
checkPossibility([3, 4, 2, 6]) // true
