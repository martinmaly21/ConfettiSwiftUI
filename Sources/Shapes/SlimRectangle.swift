//
//  SlimRectangle.swift
//  Confetti
//
//  Created by Simon Bachmann on 04.12.20.
//

import SwiftUI

@available(iOS 14.0, *)
public struct SlimRectangle: Shape {
    public func path(in rect: CGRect) -> Path {
        var path = Path()

        path.move(to: CGPoint(x: rect.minX, y: 4*rect.maxY/5))
        path.addLine(to: CGPoint(x: rect.maxX, y: 4*rect.maxY/5))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))

        return path
    }
}

@available(iOS 14.0, *)
struct SlimRectangle_Previews: PreviewProvider {
    static var previews: some View {
        SlimRectangle()
    }
}
