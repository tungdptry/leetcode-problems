

extension Character {
    func isOpen() -> Bool{
        return self == "(" || self == "[" || self == "{"
    }
    func isClose() -> Bool {
        return self == ")" || self == "]" || self == "}"
    }
    func isCloseFor(char: Character) -> Bool {
        switch self {
        case ")":
            return char == "("
        case "]":
            return char == "["
        case "}":
            return char == "{"
        default:
            return false
        }
    }
}


func isValid(_ s: String) -> Bool {
    var chars = Array(s)
    var stack = [Character]()

    for i in 0..<chars.count {
        if chars[i].isOpen() {
            stack.append(chars[i])
        } else {
            guard let top = stack.last else {
                return false
            }
            if !chars[i].isCloseFor(char: top) {
                return false
            } else {
                stack.removeLast()
            }
        }
    }
    if stack.isEmpty {
        return true
    }
    return false
}

isValid("(")
