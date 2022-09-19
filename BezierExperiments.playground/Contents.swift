//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport

class MyViewController : UIViewController {
   
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .white
        self.view = view
        createBezier(on: view)
    }
    private func getPath() -> UIBezierPath {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 50, y: 50))
        path.addLine(to: CGPoint(x: 150, y: 50))
        path.addLine(to: CGPoint(x: 150, y: 150))
        path.close()
        
        path.move(to: CGPoint(x: 50, y: 70))
        path.addLine(to: CGPoint(x: 150, y: 170))
        path.addLine(to: CGPoint(x: 50, y: 170))
        path.close()
        return path
    }
    private func addLine() -> UIBezierPath {
        let rect = CGRect(x: 10, y: 10, width: 200, height: 100)
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: [.bottomRight, .topLeft],
                                cornerRadii: CGSize(width: 30, height: 0))
                                //cornerRadius: 30)
        /*
        path.move(to: CGPoint(x: 10, y: 10))
        path.addLine(to: CGPoint(x: 210, y: 10))
        path.addLine(to: CGPoint(x: 210, y: 110))
        path.addLine(to: CGPoint(x: 10, y: 110))
        path.close()
         */
        return path
    }
    
    private func halfUni() -> UIBezierPath {
        let centerPoint = CGPoint(x: 200, y: 200)
        let path = UIBezierPath(arcCenter: centerPoint, radius: 150, startAngle: .pi/5, endAngle: .pi, clockwise: true)
        return path
    }
    
    private func uni() -> UIBezierPath {
        let centerPoint = CGPoint(x: 200, y: 200)
        let path = UIBezierPath(arcCenter: centerPoint, radius: 150, startAngle: 0, endAngle: .pi*2, clockwise: true)
        return path
    }
    
    private func superUniver() -> UIBezierPath {
        let rect = CGRect(x: 50, y: 50, width: 200, height: 100)
        let path = UIBezierPath(ovalIn: rect)
        return path
    }
    
    private func multipliPath() -> UIBezierPath {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 10, y: 10))
        path.addCurve(to: CGPoint(x: 200, y: 200), controlPoint1: CGPoint(x: 200, y: 20), controlPoint2: CGPoint(x: 20, y: 200))
        return path
    }
    
    private func povar() -> UIBezierPath {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 100, y: 100))
        path.addArc(withCenter: CGPoint(x: 150, y: 100), radius: 50, startAngle: .pi, endAngle: 0, clockwise: true)
        path.addLine(to: CGPoint(x: 220, y: 100))
        path.addArc(withCenter: CGPoint(x: 220, y: 150), radius: 50, startAngle: .pi*3/2, endAngle: .pi/2, clockwise: true)
        path.addLine(to: CGPoint(x: 200, y: 200))
        path.addLine(to: CGPoint(x: 200, y: 260))
        path.addLine(to: CGPoint(x: 100, y: 260))
        path.addLine(to: CGPoint(x: 100, y: 200))
        path.addLine(to: CGPoint(x: 80, y: 200))
        path.addArc(withCenter: CGPoint(x: 80, y: 150), radius: 50, startAngle: .pi/2, endAngle: .pi*3/2, clockwise: true)
        path.close()
        return path
    }
        
    
    private func createBezier(on view: UIView) {
        let shapeLayer = CAShapeLayer()
        view.layer.addSublayer(shapeLayer)
        shapeLayer.strokeColor = UIColor.gray.cgColor
        shapeLayer.lineWidth = 5
        shapeLayer.fillColor = UIColor.green.cgColor
        //shapeLayer.fillColor = UIColor.clear.cgColor
        //shapeLayer.path = addLine().cgPath
        //shapeLayer.path = getPath().cgPath
        //shapeLayer.path = halfUni().cgPath
        //shapeLayer.path = uni().cgPath
        //shapeLayer.path = superUniver().cgPath
        //shapeLayer.path = multipliPath().cgPath
        shapeLayer.path = povar().cgPath
        shapeLayer.lineJoin = .round
    }
}
// Present the view controller in the Live View window
PlaygroundPage.current.liveView = MyViewController()


