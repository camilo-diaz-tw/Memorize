//
//  Cardify.swift
//  Memorize
//
//  Created by Camilo Diaz on 12/1/2023.
//

import SwiftUI

struct Cardify: ViewModifier {
  var isFaceUp: Bool
  
  func body(content: Content) -> some View {
    ZStack {
      let shape = RoundedRectangle(cornerRadius: DrawingConstants.cornerRadius)
      if isFaceUp {
        shape.fill().foregroundColor(.white)
        shape.strokeBorder(lineWidth: DrawingConstants.strokeWidth)
//        content
      } else {
        shape.fill()
//        content
      }
      content.opacity(isFaceUp ? 1 : 0)
      
    }
  }
  
  private struct DrawingConstants {
    static let cornerRadius: CGFloat = 10
    static let strokeWidth: CGFloat = 3
  }
}

extension View {
  func cardify(isFaceUp: Bool) -> some View {
    self.modifier(Cardify(isFaceUp: isFaceUp))
  }
}
