//
//  Example7View.swift
//  lattice
//
//  Created by Nessa Kucuk, Turker on 11/12/24.
//

import SwiftUI

struct Example7View: View {
    
    let sharedColumn = [
        GridItem(.adaptive(minimum: 110, maximum: 170), spacing: 4),
    ]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: sharedColumn, spacing: 4, content: {
                ForEach(0..<26) { index in
                    cellContents(index: index)
                }
            })
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
    
    @ViewBuilder
    func cellContents(index: Int) -> some View {
        ZStack {
            Color.viridisPalette[6]
            Text("item: \(index)")
                .foregroundStyle(Color.white)
        }
        .frame(height: 60)
    }
}


#Preview {
    Example7View()
}
