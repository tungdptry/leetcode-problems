
func longestCommonPrefix(_ strs: [String]) -> String {
    if strs.isEmpty {
        return ""
    }
    let first = Array(strs.first!)
    for i in 0..<first.count {
        let string = String(first[0...i])
        if strs.contains(where: { !$0.starts(with: string)}) {
            if i < 1 {
                return ""
            }
            return String(first[0...i - 1])
        }
    }
    return String(first)
}

longestCommonPrefix(["flower","flow","flight"])
//longestCommonPrefix(["a", "b"])
