//
//  ContentView.swift
//  AlienTreasureHunt
//
//  Created by Gian Kaur on 2022-12-16.
//

import SwiftUI

@MainActor class UserState : ObservableObject{
    @Published var value = ""
    @Published var health = 0
    @Published var CountD1 = 0
    @Published var CountD2 = 0
    @Published var CountD3 = 0
    @Published var CountD4 = 0
    @Published var CountD5 = 0
    @Published var CountD6 = 0
    @Published var CountD7 = 0
    @Published var CountD8 = 0
    @Published var CountD9 = 0
    @Published var CountD10 = 0
    
}

struct ContentView: View {
 
    @State private var rootPresenting: Bool = false
    
    @EnvironmentObject var userState : UserState
    var body: some View {
        NavigationView{
        VStack{
                Text("ALIEN TREASURE HUNT")
            VStack{
                NavigationLink(destination : NewGame(rootPresenting: $rootPresenting), isActive: $rootPresenting){
                    VStack{
                        Image(systemName: "square.fill").resizable().frame(width: 50, height: 50)
                    Text("New Game")
                    }
                    }
               
                NavigationLink(destination : GameStat()){
                    VStack{
                                Image(systemName: "square.fill").resizable().frame(width: 50, height: 50)
                    Text("Game Stat")}
                }
                
            
                NavigationLink(destination : Quit(rootPresenting : $rootPresenting)){
                    VStack{
                Image(systemName: "square.fill").resizable().frame(width: 50, height: 50)
                    Text("Quit")
                }
                }
            } //vstack ends here
        }//VStack ends here
    }.environmentObject(userState)
        
    }

}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
