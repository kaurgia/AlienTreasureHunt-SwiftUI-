//
//  ContentView.swift
//  AlienTreasureHunt
//
//  Created by Gian Kaur on 2022-12-16.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
        VStack{
                Text("ALIEN TREASURE HUNT")
            VStack{
                NavigationLink(destination : NewGame()){
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
                
            
                NavigationLink(destination : Quit()){
                    VStack{
                Image(systemName: "square.fill").resizable().frame(width: 50, height: 50)
                    Text("Quit")
                }
                }
            }//Vstack ends here
        }//VStack ends here
    }
    }

}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
