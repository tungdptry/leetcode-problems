
class Solution {
    
    func exist(_ board: [[Character]], _ word: String) -> Bool {
        if board.count == 0 {
            return true
        }
        for i in 0..<board.count {
            for j in 0..<board.first!.count {
                if board[i][j] == word.first! {
                    if exist(board, startRow: i, startColumn: j, word) {
                        return true
                    }
                }
                
            }
        }
        
        return false
    }
    
    func exist(_ board: [[Character]], startRow: Int, startColumn: Int, _ word: String) -> Bool {
        guard word.count > 0 else { return true }
        guard board[startRow][startColumn] == word.first! else { return false }
        var tempBoard = board
        tempBoard[startRow][startColumn] = " "
        if word.dropFirst().isEmpty {
            return true
        }
        if startRow > 0 {
            if(exist(tempBoard, startRow: startRow - 1, startColumn: startColumn, String(word.dropFirst()))) {
                return true
            }
        }
        if startRow < board.count - 1 {
            if(exist(tempBoard, startRow: startRow + 1, startColumn: startColumn, String(word.dropFirst()))) {
                return true
            }
        }
        if startColumn < board.first!.count - 1 {
            if(exist(tempBoard, startRow: startRow, startColumn: startColumn + 1, String(word.dropFirst()))) {
                return true
            }
        }
        if startColumn > 0 {
            if(exist(tempBoard, startRow: startRow, startColumn: startColumn - 1, String(word.dropFirst()))) {
                return true
            }
        }
        return false
    }
}

//let input: [[Character]] = [
//    ["A","B","C","E"],
//    ["S","F","C","S"],
//    ["A","D","E","E"]
//]

let input: [[Character]] = [["A","B","C","E"],
                            ["S","F","E","S"],
                            ["A","D","E","E"]]

let sol = Solution()
print(sol.exist(input, "ABCESEEEFS"))

