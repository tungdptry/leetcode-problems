func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
    let count = nums.count
    var i = 0
    var j = count - 1
    var valCount = 0
    while i <= j {
        while nums[i] == val && i <= j {
            nums[i] = nums[j]
            valCount += 1
            j -= 1
        }
        i += 1
    }
    nums.removeLast(valCount)
    return count - valCount
}

//var arr = [0,1,2,2,3,0,4,2]
//removeElement(&arr, 2)
//var arr = [3, 3]
//removeElement(&arr, 3)
var arr = [1]
removeElement(&arr, 1)
