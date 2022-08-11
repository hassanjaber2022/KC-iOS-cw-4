import UIKit
import Foundation

var  name = "hassan"
var  birthDayYear = 2008
var currentYear = 2022
var  age = currentYear - birthDayYear

print("Hello, my name is \(name) and my age is \(age)")

if age >= 14 && age <= 18 {
    print("نعم يمكنك المشاركة في الكويت تبرمج,")
}
else
{
    print("لا يمكنك المشاركة")
}
