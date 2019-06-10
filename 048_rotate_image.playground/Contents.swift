//Given input matrix =
//    [
//        [ 5, 1, 9,11],
//        [ 2, 4, 8,10],
//        [13, 3, 6, 7],
//        [15,14,12,16]
//],
//
//rotate the input matrix in-place such that it becomes:
//[
//[15,13, 2, 5],
//[14, 3, 4, 1],
//[12, 6, 8, 9],
//[16, 7,10,11]
//]

//x, y -> y, m - x
// [3, 0] = count - round - 1, i
// [0, 3] = i, count - round - 1



class Solution {
    
    func rotate(_ matrix: inout [[Int]]) {
        let count = matrix.count
        for round in 0..<count/2 {
            for i in round..<(count - round - 1) {
                if round == 1 && i == 1 {
                    print("\(round) \(i) \n")
                    print("\(i) \(count - round - 1) \n")
                    print("\(count - round - 1) \(count - round - i - 1) \n")
                    print("\(count - round - i - 1) \(round) \n")
                }
                (matrix[round][i],
                 matrix[i][count - round - 1],
                 matrix[count - round - 1][count - round - i],
                 matrix[count - round - i][round])
                    = (matrix[count - round - i][round],
                       matrix[round][i],
                       matrix[i][count - round - 1],
                       matrix[count - round - 1][count - round - i])
            }
        }
    }
    
}


var mat = [
    [15, 13, 2, 5],
    [14, 3, 4, 1],
    [12, 6, 8, 9],
    [16, 7,10,11]]

//round = 1
// count = 4
//count - 1 - round
// count - 1 - round - i

// round = 0
// 4 - 0 - 1
// [2, 2] = [1, 2]

// [round, i] -> [count - round - 1][count - 1 - round  - i]
//count - 1 - round - i, round


// [0, 1], [1, 3], [3, 2], [2, 0]
// [round, i], [i, count - round - 1], [count - round - 1, count - round - i], [count - round - i][round]
//
//var mat = [[1,2,3],
//           [4,5,6],
//           [7,8,9]]

// [1, 1] [1, 2] [2, 2] [2 , 1]
// round = 1, i = 1, count = 4
// [1, 1] [1, 2] [2, 2], [2, 1]

let sol = Solution()
sol.rotate(&mat)

mat
