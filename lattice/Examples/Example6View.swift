//
//  Example6View.swift
//  lattice
//
//  Created by Nessa Kucuk, Turker on 11/12/24.
//

import SwiftUI

struct Example6View: View {
    let columns = [
        GridItem(.flexible(minimum: 40, maximum: 120), spacing: 4),
        GridItem(.flexible(minimum: 60, maximum: 240), spacing: 4),
        GridItem(.flexible(minimum: 20, maximum: 360), spacing: 4),
    ]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 4, content: {
                ForEach(0..<26, id: \.self) { index in
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
    Example6View()
}
