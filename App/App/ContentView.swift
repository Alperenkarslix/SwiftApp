//
//  ContentView.swift
//  Alperen
//
//  Created by Alperen Karslı on 23.04.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerCard = "card12"
    @State var cpuCard = "card4"
    @State var playerScore = 0
    @State var cpuScore = 0
    
    var body: some View {
        
        ZStack {
            Image("background").edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                
            VStack {
                Spacer()
                Image("logo")
                Spacer()
                HStack {
                    
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                    
                }
                Spacer()
                Button(action: {
                    let playerRand = Int.random(in: 2...14)
                    let cpuRand = Int.random(in: 2...14)
                    
                    playerCard = "card" + String(playerRand)
                    cpuCard = "card" + String(cpuRand)
                    
                    if playerRand > cpuRand {
                        playerScore += 1
                    }
                    if cpuRand > playerRand{
                        cpuScore += 1
                    }
                    if playerRand == cpuRand {
                        return
                    }
                    if playerScore == 20 {
                       
                    
                    }
                    if cpuScore == 20 {
                        
                    
                    }
                }, label: {
                    Image("dealbutton")}
                )
                Spacer()
                Group {
                HStack {
                    Spacer()
                    Text("Player")
                        .font(.headline)
                        .foregroundColor(Color.white)
                        .padding(.bottom, 10.0)
                    Spacer()
                    
                    Text("CPU")
                        .font(.headline)
                        .foregroundColor(Color.white)
                        .padding(.bottom, 10.0)
                    Spacer()
                    
                }
                
                    HStack {
                        
                        Spacer()
                        Text(String(playerScore ))
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                        Spacer()
                        Text(String(cpuScore))
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                            .padding(.leading)
                            
                        Spacer()
                       
                        
                    }
                }
              
                Group {
                    Spacer()
                
                    Text("Created by Alperen Karslı on 23.04.2022")
               
            Spacer()
            }
                
                
            }
          
            
        }
        
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
            ContentView()
        }
    }
}
