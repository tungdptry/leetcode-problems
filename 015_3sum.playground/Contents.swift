// O(n^2logn)
//func findIndex(k: Int, inArray sorted: [Int], from: Int, to: Int) -> Int {
//    var begin = from
//    var end = to
//    while begin <= end {
//        let medium = (begin + end) / 2
//        if sorted[medium] < k {
//            begin = medium + 1
//        } else if sorted[medium] > k {
//            end = medium - 1
//        } else {
//            return medium
//        }
//    }
//    return -1
//}
//
//func threeSum(_ nums: [Int]) -> [[Int]] {
//    let sorted = nums.sorted()
//    let count = nums.count
//    var res = [[Int]]()
//    var i = 0
//    while i < count {
//        if i > 0 && sorted[i] == sorted[i - 1] {
//            i += 1
//            continue
//        }
//        var j = count - 1
//        while j >= i {
//            if j < count - 1 && sorted[j] == sorted[j + 1] {
//                j -= 1
//                continue
//            }
//            let index = findIndex(k: -sorted[i]-sorted[j], inArray: sorted, from: i + 1, to: j - 1)
//            if index != -1 {
//                res.append([sorted[i], sorted[index], sorted[j]])
//            }
//            j -= 1
//        }
//        i += 1
//    }
//    return res
//}
//
//print(threeSum([-4,-2,1,-5,-4,-4,4,-2,0,4,0,-2,3,1,-5,0]))
//
//findIndex(k: 1, inArray: [-2,0,1,1,2], from: 0, to: 4)

func threeSum(_ nums: [Int]) -> [[Int]] {
    let sorted = nums.sorted()
    let count = nums.count
    var res = [[Int]]()
    if let last = sorted.last, last < 0 {
        return []
    }
    if let first = sorted.first, first > 0 {
        return []
    }
    var i = 0
    while i < count - 2 {
        while i > 0 && i < count - 1 && sorted[i] == sorted[i - 1] {
            i += 1
        }
        let twoSum = -sorted[i]
        var left = i + 1
        var right = count - 1
        while left < right {
            if sorted[left] + sorted[right] == twoSum {
                res.append([sorted[i], sorted[left], sorted[right]])
                while left < right && sorted[left] == sorted[left + 1] {
                    left += 1
                }
                while left < right && sorted[right] == sorted[right - 1] {
                    right -= 1
                }
                left += 1
                right -= 1
            } else if sorted[left] + sorted[right] < twoSum {
                left += 1
            } else {
                right -= 1
            }
        }
        i += 1
    }
    return res
}
//threeSum([-4,-2,1,-5,-4,-4,4,-2,0,4,0,-2,3,1,-5,0])
threeSum([0, 0, 0, 0])

