//
//  Example1View.swift
//  lattice
//
//  Created by Nessa Kucuk, Turker on 11/12/24.
//

import SwiftUI

struct Example1View: View {
    var body: some View {
        ZStack {
            Grid(horizontalSpacing: 4, verticalSpacing: 4) {
                ForEach(0..<5) { row in
                    GridRow {
                        ForEach(0..<6) { column in
                            ZStack {
                                Color.blue
                                Text("row: \(row)\ncolumn: \(column)")
                                    .foregroundStyle(Color.white)
                            }
                        }
                    }
                }
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)        
    }
}


#Preview {
    Example1View()
}
