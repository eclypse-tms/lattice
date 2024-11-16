//
//  Example5View.swift
//  lattice
//
//  Created by Nessa Kucuk, Turker on 11/12/24.
//

import SwiftUI

struct Example5View: View {
    let columns = [
        GridItem(.fixed(90), spacing: 4),
        GridItem(.fixed(150), spacing: 4),
        GridItem(.fixed(75), spacing: 4)
    ]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 4, content: {
                ForEach(0..<26) { index in
                    let qnr = index.quotientAndRemainder(dividingBy: columns.count)
                    cellContents(row: qnr.quotient, column: qnr.remainder)
                }
            })
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
    
    @ViewBuilder
    func cellContents(row: Int, column: Int) -> some View {
        ZStack {
            Color.viridisPalette[6]
            Text("row: \(row)\ncol: \(column)")
                .foregroundStyle(Color.white)
        }
        .frame(height: 60)
    }
}


#Preview {
    Example5View()
}
