
func intToRoman(_ num: Int) -> String {
    var res = [Character]()
    var current = num
    while current >= 1000 {
        res.append("M")
        current -= 1000
    }
    if current >= 900 {
        res += "CM"
        current -= 900
    }
    if current >= 500 {
        res.append("D")
        current -= 500
    }
    if current >= 400 {
        res += "CD"
        current -= 400
    }
    while current >= 100 {
        res.append("C")
        current -= 100
    }
    if current >= 90 {
        res += "XC"
        current -= 90
    }
    if current >= 50 {
        res.append("L")
        current -= 50
    }
    if current >= 40 {
        res += "XL"
        current -= 40
    }
    while current >= 10 {
        res.append("X")
        current -= 10
    }
    if current >= 9 {
        res += "IX"
        current -= 9
    }
    if current >= 5 {
        res.append("V")
        current -= 5
    }
    if current >= 4 {
        res += "IV"
        current -= 4
    }
    while current >= 1 {
        res.append("I")
        current -= 1
    }
    return String(res)
}

intToRoman(14) // XIV
intToRoman(1994) // MCMXCIV
