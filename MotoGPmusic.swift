//
//  MotoGPmusic.swift
//  SwiftUI-MotoGP
//
//  Created by 07 Zhang on 2020/4/3.
//  Copyright © 2020 07 Zhang. All rights reserved.
//

import SwiftUI
import AVFoundation

struct MotoGPmusic: View {
    @State var play = true
    let player = AVPlayer()
    var body: some View {
        HStack{
            Image("motogp2")
                .resizable()
                .frame(width:50,height:50)
                .scaledToFit()
            Text("MotoGP soundtrack")
                .font(.custom("GillSans-UltraBold",size:20))
                .bold()
                .foregroundColor(Color(hue: 0.141, saturation: 0.967, brightness: 0.967))
            
            Spacer()
            Button(action: {
                
                let fileUrl=Bundle.main.url(forResource:"MotoGP soundtrack - Highlights 2017 and 2018_Y4JS28ge_-s",withExtension: "mp3")
                
                
                
                let playerItem = AVPlayerItem(url: fileUrl!)
                
                
                self.player.replaceCurrentItem(with: playerItem)
                //player.play()
                self.play.toggle()
                if self.play{
                    self.player.pause()
                    
                }
                else{
                    self.player.play()
                    
                }
            }){
                Image(systemName: play ? "play.circle" : "pause.circle")
                    
                    .resizable()
                    .frame(width:40,height:40)
                    .foregroundColor(Color(hue: 0.141, saturation: 0.967, brightness: 0.967))
            }
            Button(action: {
                
                let fileUrl=Bundle.main.url(forResource:"MotoGP soundtrack - Highlights 2017 and 2018_Y4JS28ge_-s",withExtension: "mp3")
                
                
                
                let playerItem = AVPlayerItem(url: fileUrl!)
                
                
                self.player.replaceCurrentItem(with: playerItem)
               
                self.play.toggle()
                if self.play{
                    self.player.pause()
                    
                }
                else{
                    self.player.play()
                    
                }
            }){
                Image(systemName:  "repeat")
                    .resizable()
                    .frame(width:35,height:35)
                    .foregroundColor(Color(hue: 0.141, saturation: 0.967, brightness: 0.967))
            }
        }
        .padding(10).background(LinearGradient(gradient: Gradient(colors:[Color.gray,Color.black,Color.gray]), startPoint: UnitPoint(x: 0, y: 0), endPoint: UnitPoint(x:1,y:1)))
    }
}

struct MotoGPmusic_Previews: PreviewProvider {
    static var previews: some View {
        MotoGPmusic()
    }
}
