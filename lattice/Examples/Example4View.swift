//
//  Example4View.swift
//  lattice
//
//  Created by Nessa Kucuk, Turker on 11/12/24.
//

import SwiftUI

struct Example4View: View {
    @State private var verticalSpacing: CGFloat = 4
    @State private var horizontalSpacing: CGFloat = 4
    
    var body: some View {
        ZStack {
            Grid(horizontalSpacing: horizontalSpacing, verticalSpacing: verticalSpacing) {
                ForEach(0..<4, id: \.self) { row in
                    GridRow {
                        switch row {
                        case 0:
                            Color.infernoPalette[1]
                                .gridCellColumns(4)
                        case 1:
                            Color.infernoPalette[2]
                            Color.infernoPalette[2]
                                .gridCellColumns(3)
                        case 2:
                            Color.infernoPalette[4]
                            Color.infernoPalette[4]
                            Color.infernoPalette[4]
                                .gridCellColumns(2)
                        default:
                            Color.infernoPalette[5]
                            Color.infernoPalette[5]
                            Color.infernoPalette[5]
                            Color.infernoPalette[5]
                        }
                    }
                }
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)        
    }
}


#Preview {
    Example4View()
}
