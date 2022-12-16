//
//  Quit.swift
//  AlienTreasureHunt
//
//  Created by Gian Kaur on 2022-12-16.
//

import SwiftUI

struct Quit: View {
    @EnvironmentObject var userState : UserState
    @Binding var rootPresenting : Bool
    
    var body: some View {
        VStack{
            Text("you loose the game lose")
            Button(action:{
                rootPresenting = false
                userState.health=0
                userState.CountD1=0
                userState.CountD2=0
                userState.CountD3=0
                userState.CountD4=0
                userState.CountD5=0
                userState.CountD6=0
                userState.CountD7=0
                userState.CountD8=0
                userState.CountD9=0
                userState.CountD10=0
                
            }, label : {
                Text("back")
            })
        }
        
    }
}


