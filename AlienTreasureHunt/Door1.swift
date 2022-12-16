//
//  Door1.swift
//  AlienTreasureHunt
//
//  Created by Gian Kaur on 2022-12-16.
//

import SwiftUI

struct Door1: View {
  
    @State var randomState : String = "Treasure"
    @State var treasureMoney : Int = 0
    @State var damage : Int = 0
    @EnvironmentObject var userState : UserState
    @Binding var rootPresenting : Bool

    let options = ["Treasure", "ENEMY"]
    var body: some View {
        
        VStack{
            Text("You opened Door#1").frame(width: 300, height: 300, alignment: .top)
            if(randomState=="Treasure"){
                Text("You collected \(treasureMoney) gold!!").frame(width: 300, height: 50, alignment: .center)
                Text(" Total Treasure collected so far : \(userState.money)").frame(width: 300, height:50, alignment: .center)
                
            }else{
                Text("You encountered an Alien (\(randomState))").frame(width: 300, height: 300, alignment: .center)
                Text(" Health reduced by : \(damage)").frame(width: 300, height: 50, alignment: .center)
                     
                Text(" New Health : \(userState.health)").frame(width: 300, height: 50, alignment: .center)
                     
                     }
            
            if(userState.health <= 0){
                Quit(rootPresenting: $rootPresenting)
            }
            
            
        }.onAppear{
            randomState = self.options.randomElement() ?? ""
            if(randomState=="Treasure"){
                treasureMoney = Int.random(in: 50...500)
                print("random number generated is : \(treasureMoney)")
                userState.money += treasureMoney
                print("Total health after adding \(treasureMoney) is : \(userState.money)")
                
            }
               if(randomState=="ENEMY"){
               damage = Int.random(in: 2...25)
                print("random number generated is : \(damage)")
                while(userState.health<100){
                    damage = Int.random(in: 2...25)
                    
                }
                print("random number generated after checking value of damage: \(damage)")
                userState.health -= damage
                
                print("Total health after subtracting \(damage) is : \(userState.health)")
                
                
            }
            userState.CountD1 += 1
        }
    }
}

