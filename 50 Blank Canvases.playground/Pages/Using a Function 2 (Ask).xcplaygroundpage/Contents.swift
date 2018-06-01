//: [Previous](@previous) / [Next](@next)
//: # Using a Function
//:
//: Use this page to experiment. Have fun!
/*:
 ## Required code
 
 The following statements are required to make the playground run.
 
 Please do not remove.
 */
import Cocoa
import PlaygroundSupport

// Create canvas
let canvas = Canvas(width: 400, height: 300)

/*:
 ## Add your code below
 
 Be sure to write human-readable code.
 
 Use whitespace and comments as appropriate.
 */
// Replace this comment with your first comment – what is the goal of the code you're about to write?



func drawRegularPolygon(withSides: Int, sidelenth: Int, startX: Int, startY: Int) {
    // Find interior angle
    let interior = (withSides - 2) * 180 / withSides
    
    //Find exterior angle
    let exterior = 180 - interior
    
    // Move to the starting position
    canvas.translate(byX: startX, byY: startY)
    
    // Loop for however many sides we have
        for _ in 1...withSides {
           
            // Draw the line
            canvas.drawLine(fromX: 0, fromY: 0, toX: sidelenth, toY: 0)
            
            //Translate to end of the line (move the turtle)
            canvas.translate(byX: sidelenth, byY: 0)
            
            //Rotate
            canvas.rotate(by: Degrees(exterior))
            
            
    }
}

drawRegularPolygon(withSides: 20, sidelenth: 0, startX: 0, startY: 0)

/*:
 ## Use source control
 To keep your work organized, and receive feedback, source control is a must.
 
 Please commit and push your work often.
 
 ![source_control](source_control.png "Source Control")
 */
/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right.
 
 Please do not remove.
 
 If you don't see output, remember to show the Assistant Editor, and switch to Live View:
 
 ![timeline](timeline.png "Timeline")
 */
// Don't remove the code below
PlaygroundPage.current.liveView = canvas.imageView

