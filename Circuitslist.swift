//
//  Circuitslist.swift
//  SwiftUI-MotoGP
//
//  Created by 07 Zhang on 2020/3/21.
//  Copyright © 2020 07 Zhang. All rights reserved.
//

import SwiftUI

struct Circuitslist: View {
    var body: some View {
        NavigationView{//分類呈現列表
            List{
                Section(header: Text("MotoGP-事項及規則")){
                    ScrollView(.horizontal){
                        HStack(spacing:20){
                            Text("          ＊目前因2020新冠肺炎疫情＊\n         在MotoGP級別賽事延期或取消，     \n         目前取消的分站為開幕站-卡達站\n         延期的分站有-美國站、泰國站\n         阿根廷站、西班牙站、法國站、\n         亞拉岡站、瓦倫西亞站\n\n           ＊預計將會安排到下半年舉行＊\n\n        當時在卡達站時，Moto2與Moto3\n        級別的選手及工作人員有確認健康\n        和隔離14天。評估後這兩項級別已\n        經舉行了卡達站的賽事。")
                                .font(.custom("Cochin-Bold", size:20))
                                .foregroundColor(Color.red)
                                .background(Color.yellow)                   .cornerRadius(20)
                            
                            ForEach(0..<1){(item) in
                                VStack{
                                    Image("circuitImage\(item)")
                                        
                                        .resizable()
                                        .scaledToFit()
                                        .frame(height:280)
                                        .clipped()
                                        .cornerRadius(30)
                                        .padding()
                                    
                                }
                                .background(Color(hue: 0.526, saturation: 0.824, brightness: 0.973))
                                .cornerRadius(50)
                                Text("  自由練習（Free Practice，FP）:\n      車手可以熟悉場地特性，並提供數據\n      給車隊針對場地進行車輛調校。\n\n   MotoGP：擁有四段的練習賽事，前三\n   段時間各為45分鐘，前三次自由練習總\n   和排名在前10名可以直接進入第二階段\n     (Q2)的排位賽，剩下的車手則必須參加\n   第一階段(Q1)的排位賽。第四段在Moto3\n   排位賽之後，時間為30分鐘，不列入成績\n   計算。          ")
                                    .font(.custom("Cochin-Bold", size:20))
                                    .foregroundColor(Color.black)
                                    .background(Color(hue: 0.526, saturation: 0.824, brightness: 0.973))                 .cornerRadius(20)
                                Text("  排位賽（Qualify Practice，QP）:\n      決定於正式比賽中起跑的順序。\n\n   第一階段 (Q1)MotoGP：時間為15分鐘，\n      由第三次自由練習第11名以後的車手進行\n      前二名選手可以進入第二階段；其餘未晉\n      級的車手則是按照第一階段排位的成績，\n      於正式比賽中起跑位置第13名後開始排序。\n\n   第二階段 (Q2)MotoGP：時間為15分鐘，由\n      FP3的前10名車手與Q1的前2名車手競爭，\n       取得在正式比賽的起跑順序。")
                                    .font(.custom("Cochin-Bold", size:20))
                                    .foregroundColor(Color.orange)
                                    .background(Color(hue: 0.526, saturation: 0.824, brightness: 0.973))                 .cornerRadius(20)
                                Text("  \n\n    熱身賽（Warm-Up Practice，WUP）:\n      各級別均為20分鐘，提供車手與車廠\n      於正式比賽前做最後的練習與車輛調校。\n\n")
                                    .font(.custom("Cochin-Bold", size:20))
                                    .foregroundColor(Color.white)
                                    .background(Color(hue: 0.526, saturation: 0.824, brightness: 0.973))                 .cornerRadius(20)
                                Text("  \n\n    正式比賽（Race，RAC）:\n      同級別的所有車手下場，在數十圈的比  \n      賽一較高下；而按照每個分站場地的不\n      同，賽事圈數也有所不同。 另外在正\n      式比賽開始之前，從闈場出發至起跑\n      位置稱為探路圈(Sighting Lap)，至起\n      跑位置後於正式比賽前還會有一至二圈\n     的暖胎圈(Warm-Up Lap)。\n\n")
                                    .font(.custom("Cochin-Bold", size:20))
                                    .foregroundColor(Color.purple)
                                    .background(Color(hue: 0.526, saturation: 0.824, brightness: 0.973))                 .cornerRadius(20)
                            }
                            
                        }.frame(height:300)
                    }
                }
                Section(header: Text("車廠賽車-2019")){
                    ScrollView(.horizontal){
                        HStack(spacing:20){
                            
                            ForEach(Item.indices){
                                (item) in
                                NavigationLink(destination:ManufacturerItemDetail(Item:Item[item])){
                                    ManufacturerItemRow(Item:Item[item])
                                }
                                
                            }
                            
                        }
                    }
                }
                Section(header: Text("賽道-共20站")){
                    
                    ForEach(Circuit.indices){
                        (item) in
                        NavigationLink(destination: CircuitsDetail(circuits:Circuit[item])){
                            CircuitsRow(circuitdata: Circuit[item])
                        }
                    }
                }
                
            }.listStyle(GroupedListStyle())
                .navigationBarTitle("賽道列表")
                .onAppear{UITableView.appearance().separatorColor = .clear}//消除間隔
            
            
        }
    }
}

struct Circuitslist_Previews: PreviewProvider {
    static var previews: some View {
        Circuitslist()
    }
}
