import UIKit

//1
var manOne = (name: "Sergey", surname: "Tarasov", age: 31, sex: "Man", havekids: false)
var womanOne = (name: "Alina", surname: "Shenfeldt", age: 30, sex: "Woman", havekids: true)
//2
print(manOne.age,womanOne.2 )
print(manOne.havekids,womanOne.4)

//3
var daysInMonths: [Int] = [31,28,31,30,31,30,31,31,30,31,30,31]
//4
for i in 0..<daysInMonths.count {
    print(daysInMonths[i])
}
//5
var namesMonths: [String] = ["Jan","Feb","Mar","Abr","May","Jun","Jul","Ago","Sep","Oct","Nov","Dec"]
//6
for i in 0..<daysInMonths.count {
    print(namesMonths[i],daysInMonths[i])
}

//7
let jan = (name: "Jan", days: 31)
let feb = (name: "Feb", days: 28)
let mar = (name: "Mar", days: 31)
let abr = (name: "Abr", days: 30)
let may = (name: "May", days: 31)
let jun = (name: "Jun", days: 30)
let jul = (name: "Jul", days: 31)
let ago = (name: "Ago", days: 31)
let sep = (name: "Sep", days: 30)
let oct = (name: "Oct", days: 31)
let nov = (name: "Nov", days: 30)
let dec = (name: "Dec", days: 31)

let daysMonths = [jan,feb,mar,abr,may,jun,jul,ago,sep,oct,nov,dec]
print(daysMonths[0])
//8
    for i in 0..<daysInMonths.count {
        var j = (daysInMonths.count-i-1)
        print(namesMonths[j],daysInMonths[j])
    }
//*
func daysLeft (_ day: Int, _ month: String) -> Int {
    var i = namesMonths.firstIndex(of: month)
    var daysLeftInMonth = daysInMonths[i!] - day
        for j in i!+1..<daysInMonths.count {
            daysLeftInMonth += daysInMonths[j]
        }
        return daysLeftInMonth
  
}

print("Дней в году осталось: ",daysLeft(15, "Jul"))


//9
var journal: [String: Int] = ["Sergey Tarasov": 5, "Ivan Ivanov": 4, "Ben Stiller": 2]
//10
journal["Ivan Ivanov"] = 5
//11
func checkNote(_ name: String) {
    if journal[name]! > 2 {
        print("Ура вы сдали!")
    } else {
        print("Приходите на пересдачу")
    }
}
checkNote("Ben Stiller")
//12
journal["Марарита Денисовна"] = 5
journal["Брэд Питт"] = 3
//13
journal.removeValue(forKey: "Ben Stiller")
//14
func averageScore () -> Double {
    var total: Int = 0
    for (student,note) in journal {
        total += note
    }
    return Double(total)/Double(journal.count)
}
print("Новый список группы: ",journal)
print("Средний балл группы: ",averageScore())
