//
//  Door3.swift
//  AlienTreasureHunt
//
//  Created by Gian Kaur on 2022-12-16.
//
import SwiftUI

struct Door3: View {
  
    @State var randomState : String = ""
    @State var money : Int = 0
    @State var damage : Int = 0
    @EnvironmentObject var userState : UserState
    @Binding var rootPresenting : Bool

    
    let options = ["Treasure", "ENEMY"]
    var body: some View {
        
        VStack{
        Text("You opened Door#3")
            Text(randomState)
            Text(" Health is \(userState.health)")
            if(userState.health <= 0){
                Quit(rootPresenting: $rootPresenting)
            }
            if(
                userState.CountD1==0&&userState.CountD2==0&&userState.CountD3==0&&userState.CountD4==0&&userState.CountD5==0&&userState.CountD6==0&&userState.CountD7==0&&userState.CountD8==0&&userState.CountD9==0&&userState.CountD10==0){
                Quit(rootPresenting: $rootPresenting)
                
            }
            
        }.onAppear{
            randomState = self.options.randomElement() ?? ""
            if(randomState=="Treasure"){
                 money = Int.random(in: 2...25)
                print("random number generated is : \(money)")
                userState.health += money
                print("Total health after adding \(money) is : \(userState.health)")
                
            }else{
               damage = Int.random(in: 50...500)
                print("random number generated is : \(damage)")
                while(damage>100){
                    damage = Int.random(in: 50...500)
                    
                }
                print("random number generated after checking value of damage: \(damage)")
                userState.health -= damage
                print("Total health after subtracting \(damage) is : \(userState.health)")
                
                
            }
            userState.CountD3 += 1
        }
    }
}

