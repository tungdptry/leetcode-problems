import Foundation

func product(_ arr: [Int]) -> [Int] {
    
    let count = arr.count
    guard count > 0 else { return [] }
    
    // Product from first element to current
    // [1, 2, 3, 4, 5] -> [1, 2, 6, 24, 120]
    var preProducts = [Int]()
    preProducts.append(arr[0])
    for i in 1..<count{
        preProducts.append(preProducts[i - 1] * arr[i])
    }

    // Product from last element to current
    // [1, 2, 3, 4, 5] -> [5, 20, 60, 120, 120]
    var postProducts = [Int]()
    postProducts.append(arr[count - 1])
    for i in 1..<count {
        postProducts.append(postProducts[i - 1] * arr[count - 1 - i])
    }
    
    var result = [Int]()
    for i in 0..<count {
        if i == 0 {
            result.append(postProducts[count - 1 - 1])
        } else if i == count - 1 {
            result.append(preProducts[count - 2])
        } else {
            result.append(preProducts[i - 1] * postProducts[count - i - 2])
        }
    }
    return result
}

product([6, 2, 3, 4, 5])
