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
                Section(header: Text("MotoGP")){
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
