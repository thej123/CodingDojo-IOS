//: Playground - noun: a place where people can play

import UIKit

struct Point {
    var x: Double
    var y: Double
}

var myPoint1 = Point(x:10, y:20)
var myPoint2 = Point(x:30, y:35)
var myPoint3 = Point(x:50, y:60)
print(myPoint3)

struct Line {
    var start: Point
    var end: Point
    
    func length() -> Double {
        let len: Double = sqrt((start.x-end.x)*(start.x-end.x)+(start.y-end.y)*(start.y-end.y))
        return len
    }
}

var myline = Line(start: myPoint1, end: myPoint2)
print(myline.length())

struct Triangle {
    var points: [Point]
    func area() -> Double {
        let x = Line(start: points[0], end: points[1])
        let a = x.length()
        let y = Line(start: points[0], end: points[2])
        let b = y.length()
        let z = Line(start: points[1], end: points[2])
        let c = z.length()
        let s = 0.5*(a+b+c)
        let area: Double = sqrt(s*(s-a)*(s-b)*(s-c))
        return area
    }
}

var tri = [myPoint1, myPoint2, myPoint3]
var mytriangle = Triangle(points: tri)
print (mytriangle.area())
