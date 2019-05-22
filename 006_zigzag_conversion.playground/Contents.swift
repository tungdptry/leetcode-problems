
// each group has n + (n-1)
func convert(_ s: String, _ numRows: Int) -> String {
    if s.count < 2 || numRows == 1 {
        return s
    }
    let x = 2 * numRows - 2
    var chars = Array(s)
    let count = chars.count
    
    var result: [Character] = []
    for j in 0..<numRows {
        var flag = true
        var i = j
        while i < count {
            if flag {
                if j == numRows - 1 {
                    flag = !flag
                    continue
                }
                result.append(chars[i])
                i += x - 2 * j
            } else {
                if j == 0 {
                    flag = !flag
                    continue
                }
                result.append(chars[i])
                i += 2 * j
            }
            flag = !flag
        }
    }
    return String(result)
    
}

convert("PAYPALISHIRING", 3)


