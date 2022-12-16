//
//  Quit.swift
//  AlienTreasureHunt
//
//  Created by Gian Kaur on 2022-12-16.
//

import SwiftUI

struct Quit: View {
    
    @Binding var rootPresenting : Bool
    
    var body: some View {
        VStack{
            Text("you loose the game lose")
            Button(action:{
                rootPresenting = false
                
            }, label : {
                Text("back")
            })
        }
        
    }
}


