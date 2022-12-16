//
//  NewGame.swift
//  AlienTreasureHunt
//
//  Created by Gian Kaur on 2022-12-16.
//

import SwiftUI

struct NewGame: View {
    var body: some View {
        VStack{
        Text("ALIEN TREASURE HUNT")
            Text("Which door would ou like to open ? ")
            VStack{
                HStack{
                    NavigationLink(destination : Door1()){
                        VStack{
                            Image(systemName: "square.fill").resizable().frame(width: 50, height: 50)
                        Text("Door 1")
                        }
                        }
                   
                    NavigationLink(destination : Door2()){
                        VStack{
                                    Image(systemName: "square.fill").resizable().frame(width: 50, height: 50)
                        Text("Door 2")}
                    }
                    
                
                    NavigationLink(destination : Door3()){
                        VStack{
                    Image(systemName: "square.fill").resizable().frame(width: 50, height: 50)
                        Text("Door 3")
                    }
                    }
                    NavigationLink(destination : Door4()){
                        VStack{
                            Image(systemName: "square.fill").resizable().frame(width: 50, height: 50)
                        Text("Door 4")
                        }
                        }
                   
                    NavigationLink(destination : Door5()){
                        VStack{
                                    Image(systemName: "square.fill").resizable().frame(width: 50, height: 50)
                        Text("Door 5")}
                    }
                }
                HStack{
                    NavigationLink(destination : Door6()){
                        VStack{
                            Image(systemName: "square.fill").resizable().frame(width: 50, height: 50)
                        Text("Door 6")
                        }
                        }
                   
                    NavigationLink(destination : Door7()){
                        VStack{
                                    Image(systemName: "square.fill").resizable().frame(width: 50, height: 50)
                        Text("Door 7")}
                    }
                    
                
                    NavigationLink(destination : Door8()){
                        VStack{
                    Image(systemName: "square.fill").resizable().frame(width: 50, height: 50)
                        Text("Door 8")
                    }
                    }
                    NavigationLink(destination : Door9()){
                        VStack{
                            Image(systemName: "square.fill").resizable().frame(width: 50, height: 50)
                        Text("Door 9")
                        }
                        }
                   
                    NavigationLink(destination : Door10()){
                        VStack{
                                    Image(systemName: "square.fill").resizable().frame(width: 50, height: 50)
                        Text("Door 10")}
                    }                }
            }
        }//Vstack ends here
        
    }
}

struct NewGame_Previews: PreviewProvider {
    static var previews: some View {
        NewGame()
    }
}
