
func longestCommonPrefix(_ strs: [String]) -> String {
    if strs.isEmpty {
        return ""
    }
    let first = Array(strs.first!)
    let chars = strs.map { Array($0) }
    for i in 0..<first.count {
        if chars.contains(where: { $0.count <= i || $0[i] != first[i] }) {
            if i < 1 {
                return ""
            }
            return String(first[0...i - 1])
        }
    }
    return String(first)
}

longestCommonPrefix(["flower","flow","flight"])
longestCommonPrefix(["aa", "a"])
