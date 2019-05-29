func nextPermutation(_ nums: inout [Int]) {
    var index: Int?
    
    for i in (0..<nums.count - 1).reversed() {
        if nums[i] < nums[i + 1] {
            index = i
            break
        }
    }
    
    guard let indexNeedSwap = index else {
        nums.reverse()
        return
    }
    
    var indexToSwap: Int?
    var min = Int.max
    for i in (indexNeedSwap + 1)..<nums.count {
        if nums[i] > nums[indexNeedSwap] && nums[i] < min {
            indexToSwap = i
            min = nums[i]
        }
    }
    guard let swapIndex = indexToSwap else {
        nums.reverse()
        return
    }
    
    nums.swapAt(indexNeedSwap, swapIndex)
    var temp = Array(nums[indexNeedSwap + 1..<nums.count]).sorted()
    for i in (indexNeedSwap + 1)..<nums.count {
        nums[i] = temp[i - indexNeedSwap - 1]
    }
}

//var arr = [1, 3, 2, 6, 5, 4]
var arr = [3, 2, 1]
//var arr = [1, 1, 5]
nextPermutation(&arr)
