//
//  Example3View.swift
//  lattice
//
//  Created by Nessa Kucuk, Turker on 11/12/24.
//

import SwiftUI

struct Example3View: View {
        
    var body: some View {
        ZStack {
            Grid(horizontalSpacing: 4, verticalSpacing: 4) {
                ForEach(0..<4, id: \.self) { row in
                    GridRow {
                        switch row {
                        case 0:
                            Color.infernoPalette[1]
                            Color.clear
                            Color.clear
                            Color.infernoPalette[1]
                        case 1:
                            Color.infernoPalette[2]
                            Color.infernoPalette[2]
                        case 2:
                            Color.infernoPalette[4]
                            Color.infernoPalette[4]
                            Color.infernoPalette[4]
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
    Example3View()
}
