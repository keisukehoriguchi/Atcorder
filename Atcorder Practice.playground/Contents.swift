import UIKit

extension Array where Element: Equatable {
    mutating func remove(value: Element) {
        if let i = self.firstIndex(of: value) {
            self.remove(at: i)
        }
    }
}


//let inputN = Int(readLine()!)!
//let input = readLine()!.split(separator: " ")
//
//if input[0] == input[1] {
//    print(input[2])
//} else if input[1] == input[2] {
//    print(input[0])
//} else if input[2] == input[0] {
//    print(input[1])
//} else {
//    print("0")
//}
//

//let input = readLine()!.split(separator: " ")
//
//var sum:Int = 0
//
//for i in 1...Int(input[0])! {
//    for t in 1...Int(input[1])! {
//        sum += (i*100 + t)
//    }
//}
//
//print(sum)
//

//let input = readLine()!.split(separator: " ")
//
//var inputT: [[Int]] = []
//
//let numberOfFriends = Int(input[0])!
//let numberOfMoney = Int(input[1])!
//
//for _ in 1...numberOfFriends {
//    let inputI = readLine()!.split(separator: " ")
//    var inputReal: [Int] = []
//    for i in 0..<inputI.count {
//        inputReal.append(Int(inputI[i])!)
//    }
//    inputT.append(inputReal)
//}
//
//inputT.sort { int1, int2 in
//    int1[0] < int2[0]
//}
//
//var sum:Int = numberOfMoney
//var currentVillage:Int = 0
//
//
//for i in 0..<numberOfFriends {
//    if sum >= inputT[i][0] {
//        sum += inputT[i][1]
//    }
//    currentVillage = inputT[i][0]
//    if currentVillage > sum {
//        break
//    }
//}
//
//print(sum)



let input = readLine()!.split(separator: " ")

let allN = Int(input[0])!
let pondK = Int(input[1])!

var inputT:[[Int]] = []

for _ in 1...allN {
    let inputI = readLine()!.split(separator: " ")
    var inputReal: [Int] = []
    for t in 0..<inputI.count {
        inputReal.append(Int(inputI[t])!)
    }
    inputT.append(inputReal)
}

var setArray: [[Int]] = []

for p in 0...(allN-pondK) {
    for l in 0...(allN-pondK) {
        var oneSet:[Int] = []

        for i in 0..<pondK {
            for t in 0..<pondK {
                oneSet.append(inputT[i+p][t+l])
            }
        }
        oneSet.sort { int1, int2 in
            int1 < int2
        }
        setArray.append(oneSet)
    }
}


setArray.sort { intArray1, intArray2 in
    intArray1[pondK*pondK/2-1] < intArray2[pondK*pondK/2-1]
}

print(setArray[0][pondK*pondK/2-1])

//print(setArray)

//let inputT = [
//    [1,7,0],
//    [5,8,11],
//    [10,4,2]
//]
//
//let allN = 3
//let pondK = 2
