func fourSum(_ nums: [Int], _ target: Int) -> [[Int]] {
    guard nums.count > 3 else {
        return []
    }
    let sorted = nums.sorted()
    let count = sorted.count
    var res: Set<[Int]> = []
    
//    var i = 0
//    var j = count - 1
    
    for i in 0..<count - 3 {
        for j in (i + 1)..<count {
            var k = i + 1
            var l = j - 1
            while k < l {
                let sum = sorted[i] + sorted[j] + sorted[k] + sorted[l]
                if sum == target {
                    res.insert([sorted[i], sorted[k], sorted[l], sorted[j]])
                    k += 1
                    l -= 1
                } else if sum < target {
                    k += 1
                } else {
                    l -= 1
                }
            }
        }
    }
    
//    while i < j {
//        print("i = \(i), j = \(j)")
//        var k = i + 1
//        var l = j - 1
//        while k < l {
//            let sum = sorted[i] + sorted[j] + sorted[k] + sorted[l]
//            if sum == target {
//                res.insert([sorted[i], sorted[k], sorted[l], sorted[j]])
//                k += 1
//                l -= 1
//            } else if sum < target {
//                k += 1
//            } else {
//                l -= 1
//            }
//        }
//        if i + 1 < j - 1 && sorted[i] + sorted[i + 1] + sorted[j] + sorted[j - 1] < target {
//            i += 1
//        } else if i + 1 < j - 1 && sorted[i] + sorted[i + 1] + sorted[j] + sorted[j - 1] > target {
//            j -= 1
//        } else {
//            i += 1
//            j -= 1
//        }
//        if i + 2 < j - 1 && sorted[i + 1] + sorted[i + 2] + sorted[j] + sorted[j - 1] > target {
//            j -= 1
//        } else if i + 1 < j - 2 && sorted[i + 1] + sorted[i] + sorted[j - 2] + sorted[j - 1] < target  {
//            i += 1
//        } else {
//            i += 1
//            j -= 1
//        }
//    }
    
    return Array(res)
}
// 0 -> 7
fourSum([-3,-2,-1,0,0,1,2,3], 0)
