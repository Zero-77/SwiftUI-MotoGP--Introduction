//
//  firstpage.swift
//  SwiftUI-MotoGP
//
//  Created by 07 Zhang on 2020/3/21.
//  Copyright © 2020 07 Zhang. All rights reserved.
//

import SwiftUI

struct firstpage: View {
    @State private var moveDistance: CGFloat = 0
    @State private var moveDistancey: CGFloat = -650
    @State private var count=0
 
    @State private var rotateDegree: Double = 0
    var body: some View {
        ScrollView{
            VStack{
                
                RadialGradient(gradient:Gradient(colors:[Color.gray,Color.white,Color.white,Color.red,Color.white,Color.black,Color.black,Color.white,Color.white]),
                               center:.center,startRadius: 50, endRadius: 400)
                    .frame(height: 720)
                    .offset(x:0,y:-40)
                
                
                
                ZStack{
                    Image("motoGP")
                        .resizable()
                        .scaledToFit()
                        .frame(width:420,height: 200)
                        .offset(x:0,y:-510)
                    
                    Text("MotoGP")
                        .font(.custom("Cochin-Bold", size:70))
                        .foregroundColor(Color.red)
                        .cornerRadius(10)
                        .offset(x:0,y:-150)
                    Image(systemName:"hand.draw")
                        .resizable()
                        .scaledToFit()
                        .frame(width:70,height:70)
                        .offset(x:170,y:-150)
                        .foregroundColor(.blue)
                    Image(systemName:"flame")
                        .resizable()
                        .scaledToFit()
                        .frame(width:70,height:70)
                        .offset(x:-170,y:-150)
                        .foregroundColor(.orange)
                    //.background(LinearGradient(gradient:Gradient(colors:[Color.black,Color.red,Color.white]), startPoint: .leading, endPoint: .trailing))//漸層，注意格式，gradient傳入color，startpoint&endpoint調整漸層方向，目前設定是由左而右變化。.top為上，.bottom為下。
                    /*Image(systemName:"timer")
                     .resizable()
                     .scaledToFit()
                     .frame(width:90,height:90)
                     .offset(x:120,y:390)
                     .foregroundColor(.red)*/
                    Image(systemName:"waveform.path.ecg")
                        .resizable()
                        .scaledToFit()
                        .frame(width:80,height:50)
                        .foregroundColor(.blue)
                        .offset(x:0,y:-80)
                    
                    Text("-2020")
                        .font(.custom("Cochin-Bold", size:60))
                        .cornerRadius(10)
                        .offset(x:110,y:-90)
                    Button("START"){
                        self.count+=1
                        
                        if self.count==1{
                            self.moveDistance+=60
                       
                            self.moveDistancey = -650
                            
                        }else if self.count==2{
                            self.moveDistance+=250
                            self.moveDistancey = -650
                            
                            
                        }else if self.count==3{
                             self.moveDistancey += 300
                            self.rotateDegree = 180
                            
                        }else if
                            self.count==4{
                            
                            self.moveDistance-=310
                            
                           
                            
                        }
                        else if
                            self.count==5{
                            
                            self.moveDistancey-=300
                         self.rotateDegree = 360
                            self.count=0
                            
                        }
                        
                    }
                    .font(.custom("GillSans-Italic",size:30))
                    .offset(x:0,y:-740)
                    HStack{
                        Image("Motorcycle")
                            
                            .resizable()
                            .rotationEffect(.degrees(rotateDegree))
                            .frame(width:130,height:100)
                            .offset(x:moveDistance,y:moveDistancey)
                            
                            
                            .animation(.easeIn(duration:1))
                        
                        Spacer()
                    }
                }
                Text("世界摩托車錦標賽（Grand Prix motorcycle racing，簡稱MotoGP），是指摩托車賽中最重要的一項賽事。賽事由國際摩托車賽車協會（FIM）主辦，各分站賽主辦國負責承辦的每場具體的比賽，具體管理和爭端仲裁則由MotoGP賽事委員會執行。\n\n目前MotoGP這項賽事又根據引擎排氣量分為3個級別：Moto 3 (250cc)、Moto 2 (765cc)、Moto GP (1000cc)，3個級別就意味著每個分站會有三組賽事，由於MotoGP組的技術指標遠遠高於其他組，這組比賽往往是賽事中的焦點。但出於對安全性的考慮，MotoGP於2007年限定引擎排氣量最高為800cc，但在2012年，官方又將其改回1000cc。\n\n儘管MotoGP在這裡作為一個級別的名稱，但也作為三個級別賽事的統稱，這種用法是官方於2002年規定的，但更多的場合「MotoGP」指的是MotoGP級別。\n\n賽事內容:\n各分站進行為期三天的賽事，第一天為自由練習第一、二節（Free Practice），第二天為自由練習第三、四節（Free Practice）與排位賽（Qualify Practice），最後一天為熱身賽（Warm-Up Practice）與正式比賽（Race）。")
                    .fixedSize(horizontal: false, vertical: true)
                    .frame(width:350)
                    .padding()
                    .background(Color.yellow)
                    .cornerRadius(50)
                    .offset(x:0,y:-150)
                Section(header: Text(" 圖片牆")){
                    ForEach(0..<12){(item) in
                        VStack{
                            Image("firstpageImage\(item)")
                                
                                .resizable()
                                .scaledToFit()
                                .frame(width:400)
                                .clipped()
                                .cornerRadius(30)
                                .padding()
                            
                        }
                        .background(Color(hue: 0.526, saturation: 0.824, brightness: 0.973))
                        .cornerRadius(30)
                    }
                }
            }
        }
    }
}

struct firstpage_Previews: PreviewProvider {
    static var previews: some View {
        firstpage()
    }
}
