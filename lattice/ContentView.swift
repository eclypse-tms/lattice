//
//  ContentView.swift
//  lattice
//
//  Created by Nessa Kucuk, Turker on 11/12/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack(spacing: 16) {
                HStack(alignment: .center, content: {
                    Text("Creates basic and identical grid cells")
                    NavigationLink(destination: {
                        Example1View()
                    }, label: {
                        Text("Go")
                    })
                })
                
                HStack(alignment: .center, content: {
                    Text("Creates identical grid cells that are scrollable")
                    NavigationLink(destination: {
                        Example2View()
                    }, label: {
                        Text("Go")
                    })
                })
                
                HStack(alignment: .center, content: {
                    Text("Demonstrates how to skips cells in a Grid")
                    NavigationLink(destination: {
                        Example3View()
                    }, label: {
                        Text("Go")
                    })
                })
                HStack(alignment: .center, content: {
                    Text("How to span multiple columns")
                    NavigationLink(destination: {
                        Example4View()
                    }, label: {
                        Text("Go")
                    })
                })
                
                
                HStack(alignment: .center, content: {
                    Text("How to work with fixed size LazyGrid cells")
                    NavigationLink(destination: {
                        Example5View()
                    }, label: {
                        Text("Go")
                    })
                })
                
                HStack(alignment: .center, content: {
                    Text("How to work with flexible size LazyGrid cells")
                    NavigationLink(destination: {
                        Example6View()
                    }, label: {
                        Text("Go")
                    })
                })
                
                
                HStack(alignment: .center, content: {
                    Text("How to let LazyGrid to fit as many items as possible in each row")
                    NavigationLink(destination: {
                        Example7View()
                    }, label: {
                        Text("Go")
                    })
                })
                
                
                HStack(alignment: .center, content: {
                   Text("How to pin header view in a LazyGrid")
                   NavigationLink(destination: {
                       Example8View()
                   }, label: {
                       Text("Go")
                   })
                })
            
            
                
                Spacer()
            }
            .padding()
        }
        //.navigationTitle("Lattice")
        //.toolbar(.visible, for: .windowToolbar)
        .toolbar(content: {
            ToolbarItem(placement: .navigation, content: {
                Text("")
            })
        })
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        
    }

}

#Preview {
    ContentView()
}
