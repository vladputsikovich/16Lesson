//
//  UIIntroductionView.swift
//  16Lesson
//
//  Created by Владислав Пуцыкович on 10.12.21.
//
import UIKit

@IBDesignable
class UIIntroductionView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        draw(frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func draw(_ rect: CGRect) {
        drawLines(in: rect)
    }
    
    private func drawCircular(in rect: CGRect, _ point: CGPoint) {
        let center = point
        let radius = (rect.width / 2) - 150
        
        let path = UIBezierPath(
            arcCenter: center,
            radius: radius,
            startAngle: 0,
            endAngle:  2 * CGFloat.pi ,
            clockwise: false
        )
        
        path.lineWidth = 4
        path.lineCapStyle = .round
        
        let color = UIColor.red
        color.setFill()
        
        path.fill()
    }
    
    private func drawLines(in rect: CGRect) {
        let path = UIBezierPath()
        let path2 = UIBezierPath()
        
        let point1 = CGPoint(
            x: rect.width / 4,
            y: rect.height - rect.height / 4
        )
        let point2 = CGPoint(
            x: rect.width / 2,
            y: rect.height / 2 - rect.height / 7
        )
        let point3 = CGPoint(
            x: rect.width / 2 + rect.width / 4,
            y: rect.height - rect.height / 4
        )
        let point4 = CGPoint(
            x: rect.width / 7,
            y: rect.height / 2
        )
        let point5 = CGPoint(
            x: rect.width  - rect.width / 7,
            y: rect.height / 2
        )
        
        path.move(to: point1)
        
        path.addLine(to: point2)
        drawCircular(in: rect, point2)
        path.addLine(to: point3)
        drawCircular(in: rect, point3)
        path.addLine(to: point4)
        drawCircular(in: rect, point4)
        path.addLine(to: point5)
        drawCircular(in: rect, point5)
        path.addLine(to: point1)
        drawCircular(in: rect, point1)
        
        path2.move(to: point4)
        path2.addLine(to: point2)
        path2.addLine(to: point5)
        path2.addLine(to: point3)
        path2.addLine(to: point1)
        path2.addLine(to: point4)
        
        path.lineWidth = 2
        path2.lineWidth = 3
        let color = UIColor.yellow
        let colorLines = UIColor.red
        color.setFill()
        path.fill()
        colorLines.setStroke()
        path2.stroke()
    }
}
