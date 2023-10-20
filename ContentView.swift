//
//  ContentViewNav.swift
//  PersistenceChallenge
//
//  Created by Marko B. Yarosevych on 10/20/23.
//

import SwiftUI

struct ContentViewNav: View {
    var body: some View {
        NavigationStack{
            NavigationLink{
                ProtocolView()
                
            } label: {
                Text("ProtocolView")
            }
            NavigationLink{
                PersistenceView()
                
            } label: {
                Text("PersistenceView")
            }
            
        }
    }
}

struct ContentViewNav_Previews: PreviewProvider {
    static var previews: some View {
        ContentViewNav()
    }
}
