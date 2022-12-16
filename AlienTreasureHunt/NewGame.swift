//
//  NewGame.swift
//  AlienTreasureHunt
//
//  Created by Gian Kaur on 2022-12-16.
//

import SwiftUI

struct NewGame: View {
    @EnvironmentObject var userState : UserState
    @Binding var rootPresenting : Bool
    @State private var showingSheet = false

    var body: some View {
        VStack{
        Text("ALIEN TREASURE HUNT")
            Text("Which door would ou like to open ? ")
            VStack{
                HStack{
                    if(userState.CountD1==0){
                    NavigationLink(destination : Door1( rootPresenting: $rootPresenting)){
                        VStack{
                            Image(systemName: "square.fill").resizable().frame(width: 50, height: 50)
                        Text("Door 1")
                        }
                    }
                    }
                    
                    if(userState.CountD2==0){
                        NavigationLink(destination : Door2( rootPresenting: $rootPresenting)){
                        VStack{
                                    Image(systemName: "square.fill").resizable().frame(width: 50, height: 50)
                        Text("Door 2")}
                    }
                    }
                
                    if(userState.CountD3==0){
                        NavigationLink(destination : Door3(rootPresenting: $rootPresenting)){
                        VStack{
                    Image(systemName: "square.fill").resizable().frame(width: 50, height: 50)
                        Text("Door 3")
                    }
                    }
                    }
                    
                    if(userState.CountD4==0){
                        NavigationLink(destination : Door4(rootPresenting: $rootPresenting)){
                        VStack{
                            Image(systemName: "square.fill").resizable().frame(width: 50, height: 50)
                        Text("Door 4")
                        }
                        }
                    }
                   
                    if(userState.CountD5==0){
                        NavigationLink(destination : Door5(rootPresenting: $rootPresenting)){
                        VStack{
                                    Image(systemName: "square.fill").resizable().frame(width: 50, height: 50)
                        Text("Door 5")}
                    }
                }
                }
                
                HStack{
                    
                    if(userState.CountD6==0){
                        NavigationLink(destination : Door6(rootPresenting: $rootPresenting)){
                        VStack{
                            Image(systemName: "square.fill").resizable().frame(width: 50, height: 50)
                        Text("Door 6")
                        }
                        }
                    }
                   
                    if(userState.CountD7==0){
                        NavigationLink(destination : Door7(rootPresenting: $rootPresenting)){
                        VStack{
                                    Image(systemName: "square.fill").resizable().frame(width: 50, height: 50)
                        Text("Door 7")}
                    }
                    }
                
                    if(userState.CountD8==0){
                        NavigationLink(destination : Door8(rootPresenting: $rootPresenting)){
                        VStack{
                    Image(systemName: "square.fill").resizable().frame(width: 50, height: 50)
                        Text("Door 8")
                    }
                    }
                    }
                    
                    if(userState.CountD9==0){
                        NavigationLink(destination : Door9(rootPresenting: $rootPresenting)){
                        VStack{
                            Image(systemName: "square.fill").resizable().frame(width: 50, height: 50)
                        Text("Door 9")
                        }
                        }
                    }
                    
                    if(userState.CountD10==0){
                        NavigationLink(destination : Door10(rootPresenting: $rootPresenting)){
                        VStack{
                                    Image(systemName: "square.fill").resizable().frame(width: 50, height: 50)
                        Text("Door 10")}
                    }
                    
                }
                }
            }
        }//Vstack ends here
        
    }
}
