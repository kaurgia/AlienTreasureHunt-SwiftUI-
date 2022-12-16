//
//  ContentView.swift
//  AlienTreasureHunt
//
//  Created by Gian Kaur on 2022-12-16.
//

import SwiftUI

@MainActor class UserState : ObservableObject{
    @Published var value = "Enemy"
    @Published var health = 0
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
