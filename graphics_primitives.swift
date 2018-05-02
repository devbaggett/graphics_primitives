//: Graphics Primitives


import AppKit


// Create a Point struct that has two properties called "X" & "Y" both of which are Doubles

struct Point {
	var x: Double
	var y: Double
}


// Create a Line struct that has a "Start" and "End" property both of type Point
// In the Line struct add a function to return the Length of the created line as a Double.

struct Line {
	var start: Point
	var end: Point
	func length() -> Double {
		let pointX = (end.x - start.x)
		let pointY = (end.y - start.y)
		let lineLength = sqrt(pow(pointX,2) + pow(pointY,2))
		return lineLength
	}
}

let myLine = Line(start:Point(x:1, y:1), end:Point(x:4, y:3))
print("Length of myLine: \(myLine.length())")


// Create a Triangle Struct that contains a property called "Points" which is an array of type Point
// Add a function to the Triangle to get the area of the triangle built with three provided points and return the value as a Double.

struct Triangle {
	var points: [Point]
	func Area() -> Double {
		let pointA = self.points[0]
		let pointB = self.points[1]
		let pointC = self.points[2]
		let area = abs(pointA.x * (pointB.y - pointC.y) +
			pointB.x * (pointC.y - pointA.y) +
			pointC.x * (pointA.y - pointB.y))/2
		return area
	}
}

let myTriangle = Triangle(points: [Point(x:1,y:1), Point(x:4,y:3), Point(x:4,y:1)])
print("Area of myTriangle: \(myTriangle.Area())")
